#!/bin/bash

awk '{sum+=$4}END{print sum}' nowcoder.txt