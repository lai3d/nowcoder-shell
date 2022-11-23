#!/bin/bash

awk -F "[1,2,3,4,5]" 'BEGIN{sum=0}{print "line"NR" number:"(NF-1);sum+=(NF-1)}END{print "sum is "sum}' nowcoder.txt