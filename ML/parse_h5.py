import h5py
import matplotlib.pyplot as plt
import numpy as np

# filename = "mimic_data.h5"
filename = "mimic_records\\3982843\\3982843_0024.h5"

with h5py.File(filename, "r") as f:
    # List all groups
    print("Keys: %s" % f.keys())
    ppg_group_key = list(f.keys())[4]
    sbp_group_key = list(f.keys())[1]
    dbp_group_key = list(f.keys())[3]
    # Get the data
    print(ppg_group_key)
    data = list(f['val'])
    dbp_data = list(f['nB3'])
    sbp_data = list(f['nA3'])

# print(data)
# print(ppg_data[0])
ppg_data = []
bp_data = []
for x in data:
    ppg_data.append(x[1])
    bp_data.append(x[0])


print("SBP")
print(bp_data[sbp_data[0][0]])
avg = 0
count = 0
for i in sbp_data[0]:
    # print(i)
    if i >= 875:
        break
    avg += bp_data[i]
    count += 1
avg = avg / count
print(avg)

print("DBP")
print(bp_data[dbp_data[0][0]])
avg = 0
count = 0
for i in dbp_data[0]:
    if i >= 875:
        break
    avg += bp_data[i]
    count += 1
avg = avg / count
print(avg)

print("PPG")
print(max(ppg_data))
print(min(ppg_data))
plt.figure()
plt.plot(ppg_data[:875])
plt.tick_params(
    axis='y',          # changes apply to the x-axis
    which='both',      # both major and minor ticks are affected
    left=True,      # ticks along the bottom edge are off
    top=False,         # ticks along the top edge are off
    labelleft=False) # labels along the bottom edge are off


buff = []
for i in ppg_data[:875]:
    buff.append(str(i)+"\n")

with open('ppg_trace.txt', 'w') as f:
    for x in buff:
        lines = f.writelines(x)


plt.show()