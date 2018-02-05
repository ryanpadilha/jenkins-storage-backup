#!/bin/bash
#
# Jenkins 2.73.2 instructions for execute backup from .zip files of Thinbackup plugin
cd /opt/backup/jenkins

# global configuration for first use
git config --global user.email "ryan.padilha@gmail.com"
git config --global user.name "Ryan Padilha"

if [ -n "$(git status --porcelain)" ]; then 
  echo "there are changes";
  git add *.zip
  git commit -m 'first zip files'
  git push -u origin master
else 
  echo "no changes";
fi
