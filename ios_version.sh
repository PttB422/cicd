#!/usr/bin/env bash

cd ios
buildNumber=$(/usr/libexec/PlistBuddy -c "Print CFBundleVersion" "${PROJECT_DIR}/${INFOPLIST_FILE}")
newBuildNumber=$(($buildNumber + 1))
$(/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $newBuildNumber" "${PROJECT_DIR}/${INFOPLIST_FILE}")

VERSIONNUM=$(/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" "${PROJECT_DIR}/${INFOPLIST_FILE}")
NEWSUBVERSION=`echo $VERSIONNUM | awk -F "." '{print $3}'`
NEWSUBVERSION=$(($NEWSUBVERSION + 1))
NEWVERSIONSTRING=`echo $VERSIONNUM | awk -F "." '{print $1 "." $2 ".'$NEWSUBVERSION'" }'`
$(/usr/libexec/PlistBuddy -c "Set :CFBundleShortVersionString $NEWVERSIONSTRING" "${PROJECT_DIR}/${INFOPLIST_FILE}")

echo "buildNumber: ${buildNumber} - newBuildNumber: ${newBuildNumber}"
echo "VERSIONNUM: ${VERSIONNUM} - NEWVERSIONSTRING: ${NEWVERSIONSTRING}"
