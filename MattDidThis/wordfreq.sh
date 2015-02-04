#! /bin/bash

wc -w tweets/* | sort -n | head -1 | awk {'print $1'} > min_words.txt
wc -w tweets/* | sort -n | tail -1 | awk {'print $1'} > max_words.txt
