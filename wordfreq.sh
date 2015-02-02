#! / bin / bash           
min_words=100
min_tweet="min_tweet"
max_words=0
max_tweet="max_tweet"

for file in tweets/*.txt; do
  count=0

  while read word; do
    ((count++))
  done < $file

done

echo "DONE=============="
echo $min_words
echo $min_tweet
echo $max_words
echo $max_tweet

function check_max{
  new_max_found=false
  count=$1
  file_name=$2
  if [$count=>max_words]; then
    $max_words=$count
    $max_tweet=$file_name
    $new_max_found=true
  fi

  return $new_max_found
}

function check_min{
  new_min_found=false
  count=$1
  file_name=$2
  if [$count=>max_words]; then
    $min_words=$count
    $min_tweet=$file_name
    $new_min_found=true
  fi
  return $new_min_found
}
