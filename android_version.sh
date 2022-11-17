#!/bin/bash

# get gradle property
cd android
versionCode=$(./gradlew -q printVersionCode | tail -1)
versionName=$(./gradlew -q printVersionName | tail -1)

nextVersionName=$(echo ${versionName} | awk -F. -v OFS=. '{$NF += 1 ; print}')
nextVersionCode=$((versionCode+1))

echo "versionCode: ${versionCode} - nextVersionCode: ${nextVersionCode}"
echo "versionName: ${versionName} - nextVersionName: ${nextVersionName}"
