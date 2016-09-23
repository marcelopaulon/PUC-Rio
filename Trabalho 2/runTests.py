import os
import difflib
from os.path import basename

testDir = "tests"

totalTests = 0
failedTests = 0

for file in os.listdir(testDir):
    if file.endswith(".monga"):
        totalTests = totalTests + 1
        print('\nTest ' + file + ': ')
        os.system('./teste < ' + testDir + '/' + file + ' > output.txt')
        with open('output.txt') as f:
            s = f.readlines()
            if s[0] != 'PASS':
                failedTests = failedTests + 1
            print(s)

print("\nFinished! " + str(totalTests - failedTests) + '/' + str(totalTests) + ' tests passed.\n')
