#! / bin / bash           

for file in tweets/*.txt; do
  echo "Processing $f file..."
  
  while read p; do
    echo $p
  done <peptides.txt
  
done
