#!/usr/bin/env bash

git checkout ${APP_ENV}
git add .
git commit -am "build and bump version"
git push