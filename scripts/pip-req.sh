#! /bin/env bash

## This is to create requirements.txt file

CURDIR=$(dirname $(readlink -f $0))

target=$(realpath $CURDIR/../requirements.txt)

echo "\$target: "$target

nowpip=$(which pip)

shouldpip=$(realpath $CURDIR/../local_folder_env/bin/pip)

if [ "$nowpip" != "$shouldpip" ]; then
    echo "You should be in virtualenv first!"
    echo "\$nowpip: $nowpip"
    echo "\$shouldpip: $shouldpip"
    exit 1;
fi

pip freeze > $target
