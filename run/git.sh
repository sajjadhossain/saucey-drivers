#!/bin/bash
# Colors!
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[1;33m'
nc='\033[0m' # No Color

# If initializing remotes
if [ "$1" = "init" ]
then
  # init : Use $FUNCNAME
  init(){
    git remote add saucey https://github.com/saucey-io/saucey-drivers
    git remote add sajjad https://github.com/sajjadhossain/saucey-drivers
  }
  init $1
  echo -e "gitty added remoties >:P"

# If setting upstream
elif [ "$1" = "cherry" ]
then
  # cherry : Use $FUNCNAME
  cherry(){
    git push --set-upstream saucey $3
    git push --set-upstream sajjad $3
  }
  cherry
  echo -e "gitty popped remote cherry(ies) >:P"

# If pushing to all repos
elif [ "$1" = "shove" ]
then
  # shove : Use $FUNCNAME
  shove(){
    git push saucey
    git push sajjad
  }
  shove
  echo -e "gitty shoved to remoties >:P"

else
  echo -e "${red}ERROR: ${red}Check your statement. You can only use init -or- shove${nc}"
fi
