#!/usr/sfw/bin/python
# -*- coding: utf-8 -*-

import csv, glob, os, re, sys

folder = os.path.abspath(os.path.dirname(sys.argv[0]))

# Split each text according to its category following the instructions below
# For each category, the (n%10)-th cell of the associated list indicates
# where the n-th line of the file should go, ignoring the lines containing two \t
# (that is lines where there is a typo in the original book,
# which should not be taken into account for normalization 
# as this typo cannot be automatically detected)
subcorpora = {
"1-standard":["train","train","test","train","train","dev","train","train","train","train"],
"2-test":["test","test","test","test","test","test","test","test","test","test"],
"3-test+train":["test","test","test","train","test","test","test","test","test","test"],
"4-medecine-dev":["dev","dev","dev","dev","dev","dev","dev","dev","dev","dev"],
"4-medecine-test":["test","test","test","test","test","test","test","test","test","test"],
"5-physique-dev":["dev","dev","dev","dev","dev","dev","dev","dev","dev","dev"],
"5-physique-test":["test","test","test","test","test","test","test","test","test","test"],
"6-train":["train","train","train","train","train","train","train","train","train","train"],
}

# Create the folder for each subcorpus
os.system("mkdir " + os.path.join(folder, "split"))
trainFolder = os.path.join(os.path.join(folder, "split"), "train")
os.system("mkdir " + trainFolder)
devFolder = os.path.join(os.path.join(folder, "split"), "dev")
os.system("mkdir " + devFolder)
testFolder = os.path.join(os.path.join(folder, "split"), "test")
os.system("mkdir " + testFolder)

# Treat the corpus
fileNb = 0
with open(os.path.join(folder,"TableOfContent.tsv"), newline='', encoding="utf-8") as metadataFile:
   reader = csv.DictReader(metadataFile, delimiter='\t', quotechar='"')
   # For each row of the metadata file describing the corpus
   for row in reader:
      fileNb += 1
      # Display info about this file of the corpus
      print("Treating file #" + str(fileNb) + " (" + row["file"] + ") in category " + row["Sub-corpus"])
      # Read the file
      try:
         with open(os.path.join(os.path.join(folder, "corpus_tsv"), row["file"]), newline='', encoding="utf-8") as treatedFile:
            spamreader = csv.reader(treatedFile, delimiter='\t', quotechar='"')
            # create the corresponding train/dev/test empty files
            csvTrainFile = open(os.path.join(trainFolder, row["file"]), 'w', newline='', encoding="utf-8")
            trainWriter = csv.writer(csvTrainFile, delimiter='\t', quotechar='"', quoting=csv.QUOTE_MINIMAL)
            csvDevFile = open(os.path.join(devFolder, row["file"]), 'w', newline='', encoding="utf-8")
            devWriter = csv.writer(csvDevFile, delimiter='\t', quotechar='"', quoting=csv.QUOTE_MINIMAL)
            csvTestFile = open(os.path.join(testFolder, row["file"]), 'w', newline='', encoding="utf-8")
            testWriter = csv.writer(csvTestFile, delimiter='\t', quotechar='"', quoting=csv.QUOTE_MINIMAL)
            
            outputFiles = {"train": trainWriter, "dev": devWriter, "test": testWriter}
            inputLineNb = 0
            outputLineNb = 0
            # fill in the corresponding train/dev/test files
            for line in spamreader:
               inputLineNb += 1
               if len(line) > 2:
                  print("Line " + str(inputLineNb) + " contains a typo in the original version: ignored!")
               else:
                  # add the current line to the right file
                  outputFiles[subcorpora[row["Sub-corpus"]][outputLineNb%10]].writerow(line)
                  outputLineNb += 1
            
            # close the created train/dev/test files
            csvTrainFile.close()
            csvDevFile.close()
            csvTestFile.close()
      except (OSError):
         print("Error: file not found")
         pass