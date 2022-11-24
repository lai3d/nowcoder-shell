#!/bin/bash

# Parenthesize first character of each word
echo "Welcome To The Geek Stuff" | sed 's/\(\b[A-Z]\)/\(\1\)/g'