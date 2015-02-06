#! /bin/bash

wc -m tweets/* | sed 's/tweets\/tweet\_[[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]][[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]][[:digit:]][[:digit:]].txt/''/g' | sed 's/ /''/g' | sort -n | tail -2 | head -1 > max_chars.txt

wc -m tweets/* | sed 's/tweets\/tweet\_[[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]][[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]][[:digit:]][[:digit:]].txt/''/g' | sed 's/ /''/g' | sort -n | head -1 > min_chars.txt

# average => total number of characters and divide by number of tweets (i.e. 2000)

totalChars=$(wc -m tweets/* | sed 's/tweets\/tweet\_[[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]][[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]][[:digit:]][[:digit:]].txt/''/g' | sed 's/ /''/g' | sort -n | tail -1 | sed 's/total/''/g')

echo $totalChars/2000 | bc > avg_chars.txt
