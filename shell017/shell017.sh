#!/bin/bash

awk -F ":" '{a[NR]=$NF; for (i=NF-1;i>0;i--) a[NR]=a[NR]":"$i }END{for(k in a) print a[k]}' nowcoder.txt