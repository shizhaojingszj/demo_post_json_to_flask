#! /bin/env bash

#######################################
# This script is used for local only! #
#######################################

CURDIR=$(dirname $(readlink -f $0))

ENV_py3 && source $CURDIR/../local_folder_env/bin/activate
