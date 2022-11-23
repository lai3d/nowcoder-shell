#!/bin/bash

awk 'BEGIN{FS=""}{
        for( i=1; i<=NF; i++ ) {
            if( (NF-i) % 3 == 0 && i != NF ) 
                printf $i",";
            else printf $i
        };
        printf "\n"
     }' nowcoder.txt 