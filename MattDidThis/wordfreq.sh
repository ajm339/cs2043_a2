#! /bin/bash

wc -w tweets/* | sed 's/tweets\/tweet\_[[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]][[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]][[:digit:]][[:digit:]].txt/''/g' | sed 's/ /''/g' | sort -n | tail -2 | head -1 > max_words.txt

wc -w tweets/* | sed 's/tweets\/tweet\_[[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]][[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]][[:digit:]][[:digit:]].txt/''/g' | sed 's/ /''/g' | sort -n | head -1 > min_words.txt

# average => take total number of words and divide by number of tweets (i.e. 2000)

totalWords=$(wc -w tweets/* | sed 's/tweets\/tweet\_[[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]][[:digit:]].txt/''/g' | sed 's/tweets\/tweet\_[[:digit:]][[:digit:]][[:digit:]][[:digit:]].txt/''/g' | sed 's/ /''/g' | sort -n | tail -1 | sed 's/total/''/g')

echo $totalWords/2000 | bc > avg_words.txt
