#!/bin/env python

fp = open("../data/file.txt")

line = fp.readline()
for line in fp:
  print(line)

fp.close()

