#!/usr/bin/env bash
#set -o -e -x
if [[ -d $1 ]]; then
    exit 0
fi
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
>&2 echo "exploding $(basename $1)"
pushd $(mktemp -d)
jar xf $1 
$DIR/printfiles.sh $PWD 
popd
