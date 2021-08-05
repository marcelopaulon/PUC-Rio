import os
import difflib
from os.path import basename

testDir = "tests"
outputDir = "logs"

for file in sorted(os.listdir(testDir), key=lambda x: int(x.split('.', 1)[0])):
    if file.endswith(".monga"):
        print('\nRunning ' + file + ': ')
        os.system('./teste < ' + testDir + '/' + file + ' > ' + outputDir + '/' + file + 'log.txt')


print("\nFinished!\n")
