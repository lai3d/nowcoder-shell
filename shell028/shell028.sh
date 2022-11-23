#!/bin/bash

cat nowcoder.txt | awk '{print substr($4,14,5)}' | sort | uniq -c | sort -rn -k 1 | awk '{print $1,$2}' 