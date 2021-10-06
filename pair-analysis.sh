#!/bin/bash

AUTHORS_FILE_LOCATION="/Users/donhan/repo/icloud-adp/developer-portal/CONTRIBUTORS"
YOUR_NAME="Don Han"

echo 
echo "Calculating collaboration commits between $YOUR_NAME and other team members..."
while IFS=, read -r nickname name email; do
    if [[ $name == $YOUR_NAME ]]
    then 
        continue
    fi
  THEY_COAUTHOR_COUNT=$(git log --author "$YOUR_NAME" --grep "Co-authored-by: $name" | grep "Author:" | wc -l | tr -s " ")
  YOU_COAUTHOR_COUNT=$(git log --author "$name" --grep "Co-authored-by: $YOUR_NAME" | grep "Author:" | wc -l | tr -s " ")
  WE_COAUTHOR_COUNT=$(git log --grep "Co-authored-by: $name" --grep "Co-authored-by: $YOUR_NAME" --all-match | grep "Author:" | wc -l | tr -s " ")

  let COUNT=$((THEY_COAUTHOR_COUNT+YOU_COAUTHOR_COUNT+WE_COAUTHOR_COUNT))
  echo "$YOUR_NAME x $name => $COUNT"
done < "$AUTHORS_FILE_LOCATION"
echo "DONE..."
echo

