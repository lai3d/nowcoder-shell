#!/bin/bash

grep "23/Apr/2020" nowcoder.txt | awk '{print $1}' | sort | uniq -c | sort -r | awk '{print $1,$2}'