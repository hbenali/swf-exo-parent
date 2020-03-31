#!/bin/bash 
git submodule foreach "git checkout develop || git checkout master; git pull --all || :"
if ! git diff-index --quiet HEAD; then
   git commit -am "Daily update: $(date +'%d-%M-%Y')" && git push 
fi
