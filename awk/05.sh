#!/bin/bash

#Use of NF built-in variables (Display Last Field)  
awk '{print $1, $NF}' employee.txt