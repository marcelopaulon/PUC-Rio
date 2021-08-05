import os
import difflib
from os.path import basename

testDir = "tests"
gabsDir = "gabs"

totalTests = 0
failedTests = 0

print("Integer tests:")
print(os.listdir(testDir))
for file in sorted(os.listdir(testDir), key=lambda x: int(x.split('.', 1)[0])):
    if file.endswith(".i.monga"):
        totalTests = totalTests + 1
        print('\nTest ' + file + ': ')
        os.system('./teste output.txt < ' + testDir + '/' + file)

        os.system('llc output.txt')
        os.system('gcc -Wall test.c output.txt.s -o testeMongaGen')
        os.system('./testeMongaGen > output.txt')

        with open('output.txt') as f:
             output = f.readlines()
        with open(gabsDir + '/' + os.path.splitext(file)[0] + '.monga.expected') as f:
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

print("\nFloat tests:")

for file in sorted(os.listdir(testDir), key=lambda x: int(x.split('.', 1)[0])):
    if file.endswith(".f.monga"):
        totalTests = totalTests + 1
        print('\nTest ' + file + ': ')
        os.system('./teste output.txt < ' + testDir + '/' + file)

        os.system('llc output.txt')
        os.system('gcc -Wall test.c output.txt.s -o testeMongaGen')
        os.system('./testeMongaGen float > output.txt')

        with open('output.txt') as f:
            output = f.readlines()
        with open(gabsDir + '/' + os.path.splitext(file)[0] + '.monga.expected') as f:
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

print("\nChar tests:")

for file in sorted(os.listdir(testDir), key=lambda x: int(x.split('.', 1)[0])):
    if file.endswith(".c.monga"):
        totalTests = totalTests + 1
        print('\nTest ' + file + ': ')
        os.system('./teste output.txt < ' + testDir + '/' + file)

        os.system('llc output.txt')
        os.system('gcc -Wall test.c output.txt.s -o testeMongaGen')
        os.system('./testeMongaGen char > output.txt')

        with open('output.txt') as f:
            output = f.readlines()
        with open(gabsDir + '/' + os.path.splitext(file)[0] + '.monga.expected') as f:
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
