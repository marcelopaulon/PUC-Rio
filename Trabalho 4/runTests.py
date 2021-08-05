import os
import difflib
from os.path import basename

testDir = "tests"
gabsDir = "gabs"

totalTests = 0
failedTests = 0

print("Pass tests:")

for file in sorted(os.listdir(testDir), key=lambda x: int(x.split('.', 1)[0])):
    if file.endswith(".monga"):
        totalTests = totalTests + 1
        print('\nTest ' + file + ': ')
        os.system('./teste < ' + testDir + '/' + file + ' > output.txt')

        with open('output.txt') as f:
             output = f.readlines()
        with open(gabsDir + '/' + os.path.splitext(file)[0] + '.mongalog.txt') as f:
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

print("\nFail tests:")

for file in sorted(os.listdir(testDir), key=lambda x: int(x.split('.', 1)[0])):
    if file.endswith(".notmonga"):
        totalTests = totalTests + 1
        print('\nTest ' + file + ': ')
        os.system('./teste < ' + testDir + '/' + file + ' > output.txt')

        with open('output.txt') as f:
             output = f.readlines()
        with open(gabsDir + '/' + os.path.splitext(file)[0] + '.notmongalog.txt') as f:
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
