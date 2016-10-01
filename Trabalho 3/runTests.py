import os
import difflib
from os.path import basename

testDir = "tests"

totalTests = 0
failedTests = 0

print("Pass tests:")

for file in sorted(os.listdir(testDir), key=lambda x: int(x.split('.', 1)[0])):
    if file.endswith(".monga"):
        totalTests = totalTests + 1
        print('\nTest ' + file + ': ')
        os.system('./teste < ' + testDir + '/' + file + ' > output.txt')
        with open('output.txt') as f:
            s = f.readlines()
            if s[0] != 'PASS':
                failedTests = failedTests + 1
            print(s)

print("\nFail tests:")

for file in sorted(os.listdir(testDir), key=lambda x: int(x.split('.', 1)[0])):
    if file.endswith(".notmonga"):
        totalTests = totalTests + 1
        print('\nTest ' + file + ': ')
        os.system('./teste < ' + testDir + '/' + file + ' > output.txt')
        with open('output.txt') as f:
            s = f.readlines()
            if s[0] == 'PASS':
                failedTests = failedTests + 1
            print(s)


print("\nFinished! " + str(totalTests - failedTests) + '/' + str(totalTests) + ' tests passed.\n')
