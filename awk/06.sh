#!/bin/bash

#Another use of NR built-in variables (Display Line From 3 to 6)  
awk 'NR==3, NR==6 {print NR, $0}' employee.txt