#!/bin/bash

awk '{
        arr[$1]++;
    } END {
        for (k in arr) {
            if (arr[k] > 3) {
                print arr[k], k
            }
        }
    }' nowcoder.txt | sort -r