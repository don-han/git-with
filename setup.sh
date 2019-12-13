mv ../git-with ~/.git-with
git config --global commit.template ~/.git-with/template
echo $'alias with=\". ~/.git-with/with.sh\"' >> ~/.bash_profile 

