#!/bin/bash

awk '$1~/192.168.1.22/{print $7}' nowcoder.txt|sort|uniq -c|awk '{print $1,$2}'
### 解析：
# awk '$1~/192.168.1.22/{print $7}' nowcoder.txt|sort|uniq -c 输出的是：
#    4 /1/index.php
#    2 /3/index.php
# 因为前面默认留了太多空格，所以再使用
# awk '{print $1,$2}'
# 格式化输出第1列、第2列