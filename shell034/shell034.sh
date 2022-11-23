#!/bin/bash

awk '{sum_vsz = sum_vsz + $5;sum_rss = sum_rss + $6}
    END{
        print("MEM TOTAL \n" "VSZ_SUM:" sum_vsz/1024 "M," "RSS_SUM:" sum_rss/1024 "M")}' nowcoder.txt

#第五列第六列累加，再输出。
#输出只会用笨方法，双引号里的直接输出，\n换行，变量除以1024就是所需格式。这个print的()不能换行, 不然会报错