import tensorflow as tf
import matplotlib.pyplot as plt
import numpy as np
import scipy.io
import csv
import sys
from scipy.fftpack import fft

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

# from dataset
# for x in lines:
#     temp = float(x[:len(x)-1])
#     ppg_data.append(temp)

# from measure set
for x in lines:
    temp = int(x[:len(x)-1])
    ppg_data.append(temp)
offset = max(ppg_data) + 1
for i in range(len(ppg_data)):
    ppg_data[i] = (-1 * ppg_data[i]) + offset

# print("Measured data Max and Min")
# print(max(ppg_data))
# print(min(ppg_data[:850]))


# downscale data
# A = float(max(ppg_data))
# for i in range(len(ppg_data)):
#     ppg_data[i] = ppg_data[i] / A
# print(max(ppg_data))
# print(min(ppg_data[:850]))

# offset data
# A = min(ppg_data[:850])
# for i in range(len(ppg_data)):
#     ppg_data[i] = ppg_data[i] - A
# print(max(ppg_data))
# print(min(ppg_data[:850]))

plt.figure()
plt.title("Raw")
plt.plot(ppg_data[:850])
plt.tick_params(
    axis='y',          # changes apply to the x-axis
    which='both',      # both major and minor ticks are affected
    left=True,      # ticks along the bottom edge are off
    top=False,         # ticks along the top edge are off
    labelleft=False) # labels along the bottom edge are off

# Number of samplepoints
# N = 875.0
# Sample spacing
# T = 1.0 / 100.0
# ppg_data_float = []
# for x in ppg_data:
#     ppg_data_float.append(float(x))
# ppgf = np.fft.fftshift(ppg_data_float)
# plt.figure()
# plt.title("Raw Magnitude")
# plt.plot(np.abs(ppgf))
# plt.grid()
# plt.figure()
# plt.title("Raw Phase")
# plt.plot(np.angle(ppgf))
# plt.grid




# iterative filtering
buffer_length = 4
buff = np.zeros(buffer_length, dtype=int)
delta_buff = np.zeros(buffer_length, dtype=int)
fullness = 1
delta = 0
low_thresh = -1
high_thresh = 1
count = 0
current = 0
previous = ppg_data[0]
delta_list = []
for i in range(len(ppg_data)):
    # current buffer index
    ind = (count) % 4
    # get current value and load into buffers
    buff[ind] = ppg_data[i]
    current = buff[ind]
    # calculate the average of the most recent 4 samples
    sum = 0
    for e in buff:
        sum += e
    avg = int(sum / (fullness))
    # get the average of the most recent deltas
    sum = 0
    for e in delta_buff:
        sum += e
    delta = int(sum / (fullness))
    # if the average of the most recent deltas is within a threshold
    # use the average data to maintain a small curve
    delta_list.append(delta)
    if(delta <= high_thresh and delta >= low_thresh):
        ppg_data[i] = avg
    # save the new delta into the buffer
    delta_buff[ind] = int((current - previous)>>1)
    previous = current
    if(fullness < buffer_length):
        fullness += 1
    count += 1

plt.figure()
plt.title("Filtered Iterative")
plt.plot(ppg_data[:870])
plt.tick_params(
    axis='y',          # changes apply to the x-axis
    which='both',      # both major and minor ticks are affected
    left=False,      # ticks along the bottom edge are off
    top=False,         # ticks along the top edge are off
    labelleft=False) # labels along the bottom edge are off

buffer_length = 4
buff = np.zeros(buffer_length, dtype=int)
delta_buff = np.zeros(buffer_length, dtype=int)
fullness = 1
delta = 0
low_thresh = -1
high_thresh = 1
count = 0
current = 0
previous = ppg_data[0]
delta_list = []
for i in range(len(ppg_data)):
    # current buffer index
    ind = (count) % 4
    # get current value and load into buffers
    buff[ind] = ppg_data[i]
    current = buff[ind]
    # calculate the average of the most recent 4 samples
    sum = 0
    for e in buff:
        sum += e
    avg = int(sum / (fullness))
    # get the average of the most recent deltas
    sum = 0
    for e in delta_buff:
        sum += e
    delta = int(sum / (fullness))
    # if the average of the most recent deltas is within a threshold
    # use the average data to maintain a small curve
    delta_list.append(delta)
    if(delta <= high_thresh and delta >= low_thresh):
        ppg_data[i] = avg
    # save the new delta into the buffer
    delta_buff[ind] = int((current - previous)>>1)
    previous = current
    if(fullness < buffer_length):
        fullness += 1
    count += 1

#gaussian filtering
# data_buffer = np.zeros(len(ppg_data))
# kernel = [6, 24, 36, 24, 6]
# kernel = [2, 4, 2]
# shift = 4
# length = len(ppg_data)
# for i in range(length):
#     sum = 0
#     for j in range(len(kernel)):
#         if ((i-j) < 0) or ((i+j) > length-1):
#             continue
#         sum += kernel[j] * ppg_data[i]
#     data_buffer[i] = (sum>>shift)
# ppg_data = data_buffer

# plt.figure()
# plt.title("Delta")
# plt.plot(delta_list[:len(delta_list)-1])
# print(delta_list)

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
# plot filtered data
plt.figure()
plt.title("Filtered Iterative + Gaussian")
plt.plot(ppg_data[:870])
plt.tick_params(
    axis='y',          # changes apply to the x-axis
    which='both',      # both major and minor ticks are affected
    left=False,      # ticks along the bottom edge are off
    top=False,         # ticks along the top edge are off
    labelleft=False) # labels along the bottom edge are off

# Number of samplepoints
# N = 875.0
# Sample spacing
# T = 1.0 / 100.0
# ppg_data_float = []
# for x in ppg_data:
#     ppg_data_float.append(float(x))
# ppgf = np.fft.fftshift(ppg_data_float)
# plt.figure()
# plt.title("Filtered Magnitude")
# plt.plot(np.abs(ppgf))
# plt.grid()
# plt.figure()
# plt.title("Filtered Phase")
# plt.plot(np.angle(ppgf))
# plt.grid


input_data = np.array(delta_list[:875], dtype=np.float32)
input_data = input_data.reshape((1, 875, 1))

# perform inference
interpreter.set_tensor(input_details[0]['index'], input_data)
interpreter.invoke()
# The function `get_tensor()` returns a copy of the tensor data.
# Use `tensor()` in order to get a pointer to the tensor.
output_data = interpreter.get_tensor(output_details[0]['index'])
output_data1 = interpreter.get_tensor(output_details[1]['index'])

print("Results:")
print("SBP")
print(output_data)
print("DBP")
print(output_data1)

plt.show()