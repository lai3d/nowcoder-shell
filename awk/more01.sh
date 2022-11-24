#!/bin/bash

#1) To print the first item along with the row number(NR) separated with ” – “ from each line in geeksforgeeks.txt
awk '{print NR "- " $1 }' geeksforgeeks.txt