#!/bin/bash

hugo

siteDir="$PWD/public"

# Push updates to gh-pages repo
cd "$siteDir/public"
git add .
git commit -m "update"
git push origin master

sleep 10

# Push updates to academic fork
cd $siteDir
git add "$PWD"
git commit -m "update"
git push -u origin master