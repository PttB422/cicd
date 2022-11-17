#!/usr/bin/env bash

git remote add origin https://github.com/PttB422/cicd.git
git checkout ${APP_ENV}
git add .
git commit -am "build and bump version"
git push origin ${APP_ENV}