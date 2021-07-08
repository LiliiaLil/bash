#! /usr/bin/bash

Us=$1
f=$2

if [[ $(id "$Us") ]] && [[ -e "$f" ]]; then 
 	echo "users yes $1, file yes $2"
    ls -l 
    sudo chown $1:$1 $2
    echo "change of owner"
    ls -l
else
 	echo "No user: $1, no files $2"
fi
