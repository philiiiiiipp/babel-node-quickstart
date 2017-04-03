#bin/sh

rm init.sh
rm -rf .git/
npm install

flow-typed install

if [ $# == 0 ]; then
	echo "Going without a git repo"
else
  echo "Adding git repo " $1
  git init
  git remote add origin $1
  git add .
  git commit -m 'Initial'
  git push -u origin master
fi
