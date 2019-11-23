#!/bin/bash

projectPath="C:\Users\arpit\Desktop\prog"
currDir=($PWD)
dir=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
cd "$dir"

if [ "$1" == "" ]; then
    echo "You're missing a project name!";
else
    python remove.py $1
    cd "$projectPath"
    rm -rf $1
    cd "$currDir"
fi
