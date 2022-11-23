#!/bin/bash

cat nowcoder.txt | awk '{print $2}' | sort | uniq -c | grep -v '1' | sort -n

#先用awk提取文本的第二列信息并对之进行排序，
#排序后才能用uniq进行去重统计（先去重统计在排序会造成统计不准确），
#再用grep把没有重复的取反求出（没有重复数值就是1），
#最后按题目要求再次按数值排序！！！