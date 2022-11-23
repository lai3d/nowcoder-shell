#!/bin/bash

awk -F"[:,]+" '{switch(NR){
    case 1 : print "serverVersion:"$NF;break
    case 3 : print "serverName:"$NF;break
    case 4 : print "osName:"$(NF-2);print "osVersion:"$NF;break
    default: break;
}}' nowcoder.txt


