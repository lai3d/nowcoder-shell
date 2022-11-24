#!/bin/bash

#4) To find the length of the longest line present in the file:  
awk '{
    if(length($0) > max)
        max = length($0)
    }
    END {
        print max
}' geeksforgeeks.txt