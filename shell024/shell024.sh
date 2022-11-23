#!/bin/bash

grep "23/Apr/2020" nowcoder.txt | cut -c '-12' | sort -u | wc -l