#!/bin/bash

awk '/ESTABLISHED/ && /3306/{
    map[substr($5,0,length($5)-5)]++
    } 
    END {
        for(addr in map) print(map[addr],addr) 
    }' nowcoder.txt| sort -nrk 1