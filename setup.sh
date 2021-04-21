mv ../git-with ~/.git-with
git config --global commit.template ~/.git-with/template
echo $'alias with=\"bash ~/.git-with/with.sh\"' >> ~/.profile 
source ~/.profile

