#!/usr/bin/python3
import sys
if len(sys.argv)==2:
    name=sys.argv[1]
    print("Hello,%s"%(name))
else:
    print("Enter only one argument after the file name")
