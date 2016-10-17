#!/usr/bin/env bash
#set -o -e -x
#>&2 echo "classcounter.sh $1"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/printfiles.sh $1 | grep -e \\.class -e \\.groovy | wc -l
