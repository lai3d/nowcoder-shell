#!/bin/bash

awk -F" " '{for(i=1;i<=NF;i++){if(length($i) < 8){print $i}}}' nowcoder.txt