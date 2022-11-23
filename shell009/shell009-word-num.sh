#!/bin/bash

cat nowcoder.txt | xargs -n1 | sort | uniq -c | sort -n | awk '{print $2, $1}'