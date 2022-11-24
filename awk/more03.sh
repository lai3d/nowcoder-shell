#!/bin/bash

#3) To print any non empty line if present
awk 'NF <= 0 {print NR}' geeksforgeeks.txt