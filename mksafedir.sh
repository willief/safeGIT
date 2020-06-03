#!/bin/bash
# Make an empty directory on a SAFE network
# Willie Fleming - June 2020

workDir=/tmp/safe-git-workarea

if [ -d "$workDir" ]; then
    rm -rf "$workDir"
fi

mkdir -p "$workDir"


dirName=$@
#get new directory name if not supplied as arg

if [ !$@ ]; then
    echo " Do NOT use spaces in directory names"
    read -p 'Enter directory name: ' dirName
fi

echo $workDir/$dirName
mkdir -p $workDir/$dirName
ls -l $workDir


safe files put $workDir/$dirName --recursive















































