#!/bin/bash
set -o errexit

if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "master" ]; then exit 0; fi

rm -rf public
mkdir public

git config --global user.email "robot@travis-ci.org"
git config --global user.name "Travis CI"

npm install raml2html

raml2html API/raml/v1/index.raml > public/index.html

echo "docs.zync.co" > public/CNAME

cd public
git init
git add .
git commit -m "Deploy to Github Pages"
git push --force --quiet "https://${GITHUB_TOKEN}@github.com/${GITHUB_REPO}.git" master:gh-pages > /dev/null 2>&1