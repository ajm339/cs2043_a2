#! /bin/bash

#calculate minimum number of words in a tweet
wc -w tweets/* | sort -n | head -1 | awk {'print $1'} > min_words.txt
#calculate maximum number of words in a tweet
wc -w tweets/* | sort -n | tail -1 | awk {'print $1'} > max_words.txt

#option 1 (only works within directory) http://stackoverflow.com/questions/9151164/get-average-words-per-file
find . -type f -exec wc -w {} \; | awk '{numfiles=numfiles+1;total += $1} END{print total/numfiles}'

#This properly gets total words
wc -w tweets/* | sort -n | tail -1 | awk {'print $1'} 

#This properly gets total files
ls -1 tweets | wc -l