#! /bin/bash

find ./tweets/* -exec cat '{}' + | tr -c "[[:alnum:]]\'" "\n" | sort | uniq -c | sort -nr | head -11 | tail -10 | sed 's/^ *//'> most_common.txt
