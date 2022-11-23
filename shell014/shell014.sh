#!/bin/bash

awk '{if(NR==1) {N=$1} else{sum+=$1}} END{printf ("%.3f",sum/N) }' nowcoder.txt