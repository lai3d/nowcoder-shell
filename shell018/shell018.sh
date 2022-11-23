#!/bin/bash

awk -F "/" '{ arr[$3]++ } END { for (i in arr) { printf("%d %s\n", arr[i], i) } }' nowcoder.txt | sort -r 