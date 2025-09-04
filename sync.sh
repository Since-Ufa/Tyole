#!/bin/bash 

directories=$(ls -d -- */) 

bold=$(tput bold)
normal=$(tput sgr0)

COLOR='\033[1;33m'
CLEAR='\033[0m'

for directory in $directories
do
  cd $directory
  git pull
  echo " "
  echo -e ">>>>> ${COLOR}${bold}Current working directory: $directory ${normal}${CLEAR} <<<<<<"   
  echo " "
  git add *
  date=$(date '+%Y-%m-%d %H:%M')
  git commit -m "$date"
  git push origin HEAD
  gh repo sync
  cd ..
done

cowsay -rC Sync complete!