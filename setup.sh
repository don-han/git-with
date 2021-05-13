mv ../git-with ~/.git-with
chmod +x ~/.git-with/with.sh
git config --global commit.template ~/.git-with/template
echo $'alias with=\"bash ~/.git-with/with.sh\"' >> ~/.profile 
source ~/.profile

