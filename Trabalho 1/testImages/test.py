import os
import difflib
from os.path import basename

klist = [2,8,16,64,128,512,1024]

for file in os.listdir("."):
    if file == "in.bmp":
        continue
    for k in klist:
        if file.endswith(".bmp"):
                            
            print(file + " - " + str(k) + "\n")
            os.system("copy " + file + " in.bmp")
            os.system('"../x64/Release/Trabalho 1" -k ' + str(k) + ' -M ' + '20.00')
            os.system("move out.bmp output/" + os.path.splitext(file)[0] + '-' + str(k) + '-' + '20' + '.bmp')
            os.system("del in.bmp")