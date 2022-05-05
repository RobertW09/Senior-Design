import tensorflow as tf
import matplotlib.pyplot as plt
import numpy as np
import scipy.io
import csv
import sys


if(len(sys.argv) == 3):
    model_path = sys.argv[1]
    data_path = sys.argv[2]
else:
    # data_path = ".\\bidmc-ppg-and-respiration-dataset-1.0.0\\bidmc_data.mat"
    data_path = ".\\bidmc-ppg-and-respiration-dataset-1.0.0\\bidmc_csv\\bidmc_43_Signals.csv"
    model_path = ".\\converted\\lstm_ppg_nonmixed.tflite"


#############################################################
#
# LOAD MODEL FROM FILE
#
############################################################

interpreter = tf.lite.Interpreter(model_path)
interpreter.allocate_tensors()

# Get input and output tensors.
input_details = interpreter.get_input_details()
output_details = interpreter.get_output_details()
# print(input_details)
# print(output_details)

#######################################################
#
# generate data
#
########################################################

#
# random data
#
input_shape = input_details[0]['shape']
input_data = np.array(np.random.random_sample(input_shape), dtype=np.float32)
print(input_data.shape)
# matlab data
# data = scipy.io.loadmat(data_path)
# print(data.keys())
# print(data['data'])

#
# csv data
#
# ppg_data = []
# time = []
# with open(data_path, mode='r') as csv_file:
#     csv_reader = csv.DictReader(csv_file)
#     for row in csv_reader:
#         ppg_data.append(float(dict(row)[' PLETH']))
#         time.append(float(dict(row)['Time [s]']))
# print(ppg_data)
# plt.plot( time[:875], ppg_data[:875])
# plt.tick_params(
#     axis='y',          # changes apply to the x-axis
#     which='both',      # both major and minor ticks are affected
#     left=False,      # ticks along the bottom edge are off
#     top=False,         # ticks along the top edge are off
#     labelleft=False) # labels along the bottom edge are off
# print("MAX AND MIN OF CSV DATA")
# print(max(ppg_data))
# print(min(ppg_data))
# plt.show()

#
# READ PPG TRACE FROM TXT FILE
#
with open('ppg_trace.txt') as f:
    lines = f.readlines()

ppg_data = []
for x in lines:
    ppg_data.append(int(x[:len(x)-1]))

print("Measured data Max and Min")
print(max(ppg_data))
print(min(ppg_data[:850]))


# downscale data
# A = float(max(ppg_data))
# for i in range(len(ppg_data)):
#     ppg_data[i] = ppg_data[i] / A
# print(max(ppg_data))
# print(min(ppg_data[:850]))


plt.plot(ppg_data)
plt.tick_params(
    axis='y',          # changes apply to the x-axis
    which='both',      # both major and minor ticks are affected
    left=False,      # ticks along the bottom edge are off
    top=False,         # ticks along the top edge are off
    labelleft=False) # labels along the bottom edge are off
plt.figure()

# low pass FIR filter
# FIRCoeffs = [172, 321, 579, 927, 1360, 1858, 2390, 2916, 3391, 3768, 4012, 4096]
# cbuff = np.zeros(32)
# offset = 0
# prev_value = 0
# curr_value = 0
# avg_reg = 0
# for i in range(len(ppg_data)):
#     # *p += ((((long) x << 15) - *p) >> 4);
#     avg_reg = avg_reg + (((ppg_data[i]<<15) - avg_reg) >> 4)
#     estimate = avg_reg>>15
#     din = ppg_data[i] - estimate
#     cbuff[offset] = din
#     z = FIRCoeffs[11] * (cbuff[(offset-11) & 0x1F])
#     for j in range(11):
#         z = z + (FIRCoeffs[j] * (cbuff[(offset - j) & 0x1F] + cbuff[(offset - 22 + j) & 0x1F]))
#     offset += 1
#     offset %= 32
#     ppg_data[i] = z
# # plot filtered data

# plt.plot(ppg_data)
# plt.tick_params(
#     axis='y',          # changes apply to the x-axis
#     which='both',      # both major and minor ticks are affected
#     left=False,      # ticks along the bottom edge are off
#     top=False,         # ticks along the top edge are off
#     labelleft=False) # labels along the bottom edge are off
# plt.figure()
# plt.show()


input_data = np.array(ppg_data[:875], dtype=np.float32)
input_data = input_data.reshape((1, 875, 1))

# perform inference
interpreter.set_tensor(input_details[0]['index'], input_data)
interpreter.invoke()
# The function `get_tensor()` returns a copy of the tensor data.
# Use `tensor()` in order to get a pointer to the tensor.
output_data = interpreter.get_tensor(output_details[0]['index'])
output_data1 = interpreter.get_tensor(output_details[1]['index'])

print("Results:")
print(output_data)
print(output_data1)