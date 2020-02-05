#!/bin/sh
if [ $# -eq 0 ]
  then
    echo "need the name of new branch"
    exit 1
fi
git stash
git fetch --all
git checkout eagency/master
git checkout -b $1
git commit --allow-empty
git push origin $1
git stash pop
git-open.sh
