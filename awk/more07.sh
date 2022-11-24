#!/bin/bash

#7) To find/check for any string in any specific column:  
awk '{ if($2 == "B6") print $0; }' geeksforgeeks.txt