import os
import difflib
from os.path import basename

testDir = "tests"

totalTests = 0
failedTests = 0

for file in os.listdir(testDir):
    if file.endswith(".monga"):
        totalTests = totalTests + 1
        print('\n-----------------------------------------------\nTest: ' + file + '\n')
        os.system('./teste ' + testDir + '/' + file)
        with open('output.txt') as f:
             output = f.readlines()
        with open(testDir + '/' + os.path.splitext(file)[0] + '.expected') as f:
             expected = f.readlines()

        differences = 0
        for line in difflib.unified_diff(output, expected, fromfile='output', tofile='expected', lineterm=''):
            print(line)
            differences = differences + 1
        if differences == 0:
            print("\nSUCCESS!\n")
        else:
            print("\nFAIL\n")
            failedTests = failedTests + 1

print("\nFinished! " + str(totalTests - failedTests) + '/' + str(totalTests) + ' tests passed.\n')
