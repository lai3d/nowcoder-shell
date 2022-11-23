#!/bin/bash

awk -F"[0-9]" '{if(NF==2)print $0}' nowcoder.txt