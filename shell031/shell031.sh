#!/bin/bash

awk '{if($1 ~ /tcp/ ){
        a[$5]++}
      }
      END{
      for(i in a){
      print i" "a[i]}
      }' nowcoder.txt | awk -F"[: ]" '{print $1" "$3}' | sort -nrk2

#本来想用空格跟冒号做分隔符，只用数组存ip，但是不知道为啥不行，第一个awk只能先把ip端口给计数统计。
#先用if判断是否是tcp，再把ip列存进数组，用for循环输出ip和次数。然后再用awk，把冒号空格当分隔符，输出ip和次数，再用sort排序