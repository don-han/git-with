#!/bin/bash

git_with=${HOME}/.git-with

AUTHORS_FILE_LOCATION="${git_with}/authors.csv"
git_template="${git_with}/template"

args="$@"

# Reset template
> $git_template

echo "type(scope?): description" >> $git_template

# If arg starts with rdar, add it to the commit message
if [[ $1 =~ ^rdar ]] ;
then
    echo >> $git_template
    echo "$1" >> $git_template
    shift # Shift argument positions by one to the right
    args="$@"
fi

echo >> $git_template
echo >> $git_template
for nickname in $args
do
    author=$(grep ^$nickname $AUTHORS_FILE_LOCATION)
    message=$(awk -F ',' '{ print "Co-authored-by: " $2 " " "<" $3 ">" }' <<< "$author" >> "$git_template")
done

echo >> $git_template
cat >> $git_template <<- END
# Valid commit types: [build, ci, chore, docs, feat, fix, perf, refactor, revert, style, test]
# Conventional commit rules: https://cheatography.com/albelop/cheat-sheets/conventional-commits/
END

cat $git_template

