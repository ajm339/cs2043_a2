#! / bin / bash           
min_words = 100
max_words = 0

for file in tweets/*.txt; do

  while read word; do
    echo $word + "\n"
  done < $file

done
