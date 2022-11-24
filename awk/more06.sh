#!/bin/bash

#6) Printing lines with more than 10 characters:  
awk 'length($0) > 10' geeksforgeeks.txt