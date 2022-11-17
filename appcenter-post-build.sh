#!/usr/bin/env bash

git diff ./ios/cicd/Info.plist
git add .
git commit -am "build and bump version"
git push origin uat