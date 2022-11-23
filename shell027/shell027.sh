#!/bin/bash

sed -n '/.*404.*baidu.*/p' nowcoder.txt | wc -l