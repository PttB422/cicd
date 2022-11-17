#!/usr/bin/env bash

git diff ./ios/cicd/Info.plist
git remote add origin https://PttB422:${GIT_PW}@github.com/PttB422/cicd.git
git checkout ${APP_ENV}
git add .
git commit -am "build and bump version"
git push origin ${APP_ENV}