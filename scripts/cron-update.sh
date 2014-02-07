#!/bin/bash

TOPDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
cd "${TOPDIR}"

./self-update.sh 2>&1 >/dev/null
./update.sh $* 2>&1 >/dev/null
