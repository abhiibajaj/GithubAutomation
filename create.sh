#!/bin/bash
function create() {
    
    projectPath="C:\Users\arpit\Desktop\prog"
    currDir=($PWD)
    dir=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
    cd "$dir"
    
    if [ "$1" == "" ]; then
        echo "You're missing a project name!";
    else
        python create.py $1
        cd "$projectPath"
        mkdir "$1"
        cd "$1"
        
        file="main.py"
        if [  "$2" != "" ]; then
            file="main.$2"
        fi
        
        git init
        git remote add origin git@github.com:arpitbajaj98/$1.git
        touch $file
        touch "README.md"
        git add .
        git commit -m "Initial commit"
        git push origin master
        
        cd "$currDir"
    fi
    
    
    
}

function remove() {
    h=($1)
    echo "$h"
}