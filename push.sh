#!/bin/bash

if [ $# != 1 ]
then
    echo Usage: $0 [commit message]
    exit
fi

../my-bash-script/gitpush.sh anki "$1"
