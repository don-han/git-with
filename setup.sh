mv ../git-with ~/.git-with
git config --global commit.template ~/.git-with/template
echo $'alias with=\"bash ~/.git-with/with.sh\"' >> ~/.bash_profile 
source ~/.bash_profile

