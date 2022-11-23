#!/bin/bash

awk 'BEGIN{
        PROCINFO["sorted_in"]="@val_num_desc"
    }/tcp/{
        a[$6]++
    }
    END{
        for(v in a) print v,a[v]
    }' nowcoder.txt