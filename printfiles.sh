#!/usr/bin/env bash
#set -o -e -x
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#>&2 echo "printfiles.sh $1"
find $1 -type f -name '*.class'
find $1 -type f -name '*.groovy'
find $1 -type f -name '*.jar' -exec $DIR/explode.sh {} \;
find $1 -type f -name '*.war' -exec $DIR/explode.sh {} \;
