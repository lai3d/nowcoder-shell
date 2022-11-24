#!/bin/bash

#8) To print the squares of first numbers from 1 to n say 6:  
awk 'BEGIN {
    for(i = 1; i <= 6; i++)
        print "square of", i, "is", i*i;
}'