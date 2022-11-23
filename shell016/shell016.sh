#!/bin/bash

awk '{
     if ($0 ~ /^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[09][0-9]|[1-9][0-9]|[0-9])$/) {
         print("yes");
     } else if ($0 ~ /[[:digit:]].[[:digit:]].[[:digit:]].[[:digit:]]/){
         print("no");
     } else {
         print("error")
     }
 }' nowcoder.txt