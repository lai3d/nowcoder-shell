#!/bin/bash

read n
if [[ $n =~ ^[0-9]+$ ]]; then
	awk -v n=$n 'BEGIN{
        for (i = 1; i <= n; i++) {
            row = ""
            for (j = 1; j <= n-i; j++) {
                row = row" "
            }

            for (k = 1; k <= i; k++) {
                row = row"*"" "
            }
            print row
        }
    }'
else
	echo 'oops err'
fi
