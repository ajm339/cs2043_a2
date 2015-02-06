#! /bin/bash

sed -n '255,298p' frankenstein.txt | tr '[[:upper:]]' '[[:lower:]]' | tr -d '[[:punct:]]' | tr -c "[[:alnum:]]\'" "\n" | sort | uniq -c | sort -nr | head -11 | tail -10 | sed 's/^ *//' > frankentemp.txt
