#!/bin/bash

git_with=$HOME/.git-with

authors=$git_with"/authors.csv"
git_template=$git_with"/template"

args="$@"

# Reset template
> $git_template

# Add two empty lines
echo >> $git_template
echo >> $git_template

for nickname in $args
do
    author=$(grep ^$nickname $authors)
    message=$(awk -F ',' '{ print "Co-authored-by: " $2 " " "<" $3 ">" }' <<< "$author" >> "$git_template") 
done

cat $git_template




