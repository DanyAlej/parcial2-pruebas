import os
import sys


for i in range(14,1000):
    os.popen('emulator -avd Pixel_2_API_26 -no-snapshot')
    os.system(f'runFeatures.bat {i}')
    #os.system(f'runFeatures.bat')
    os.system('killEmulator.bat')
    os.system(f'MoveFiles.bat {i}')
    #os.system(f'MoveFiles.bat')
print("All were tested")