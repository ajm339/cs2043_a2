#! /bin/bash

wc -m tweets/* | sort -n | awk {'print $1'} | tail -1 > max_chars.txt
wc -m tweets/* | sort -n | awk {'print $1'} | head -1 > min_chars.txt
