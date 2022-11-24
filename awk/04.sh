#!/bin/bash

#Use of NR built-in variables (Display Line Number)  
awk '{print NR, $0}' employee.txt