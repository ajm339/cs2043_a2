#! /bin/bash

# wc -w frankenstein.txt | sort -n | head -10

sed 's/[[:punct:]]/*/g';'s/[A-Z]/[a-z]/g' testFrank.txt > FUCK.txt
