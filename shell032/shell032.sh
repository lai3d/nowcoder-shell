#!/bin/bash

awk '/tcp/{print $5}' nowcoder.txt |awk -F ':' '/3306/{print $1}'|sort|uniq -c|wc -l|awk '{print "TOTAL_IP "$1}' 
awk  '/3306/{if($6=="ESTABLISHED"&&$1=="tcp")print $6}' nowcoder.txt|wc -l|awk '{print "ESTABLISHED "$1}' 
awk '/3306/{if($1=="tcp")print $5}' nowcoder.txt|grep '3306'|wc -l|awk '{print "TOTAL_LINK "$1}'

