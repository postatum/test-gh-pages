#!/usr/bin/env bash

GH_PAGES_FOLDER="./gh-pages-repo"
GH_PAGES_REPO="git@github.com:postatum/test-gh-pages.git"

echo "publish >> Building"
gitbook build
echo "publish >> Cloning repo with gh-pages"
git clone -b gh-pages $GH_PAGES_REPO $GH_PAGES_FOLDER
echo "publish >> Copying gitbook html"
cp -R ./_book $GH_PAGES_FOLDER
cd $GH_PAGES_FOLDER
echo "publish >> Commiting"
git add .
git commit -m "Update gh-pages from gitbook"
echo "publish >> Pushing"
git push origin gh-pages
echo "publish >> Done"
