#!/bin/bash

awk -F ":" '{a[$1]=a[$1]":"$2}END{
for (k in a )
    print k""a[k]
}' nowcoder.txt | awk -F ":" '{
printf ("[%s]\n",$1);
for (i=2;i<=NF;i++)
    print $i
}'

