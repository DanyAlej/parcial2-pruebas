import os
import sys

for i in range(4001,4549):
    os.system(f'signApks.bat {i}')
print("All were resign with calabash")