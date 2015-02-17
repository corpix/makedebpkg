#!/usr/bin/env bash

set -e

root=$(pwd)
source scripts/vars
cd test
for x in *; do
    if [ -d $x ]; then
        cd $x
        MAKEDEBPKG_CONF=$root/makedebpkg.conf $root/makedebpkg -f -L --key $GPG_KEY --sign
        cd -
    fi
done
