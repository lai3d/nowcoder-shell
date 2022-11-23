#!/bin/bash

awk '{for (i=1; i<=NF; i++) arr[i]=arr[i]" "$i}END{for (i=1; i<=NF; i++) print arr[i]"\n"}' nowcoder.txt

#利用一个数组，分别获取每一行的每一列