#!/bin/bash

TOPDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${TOPDIR}/.."

git pull >/dev/null 2>&1

cd scripts

./update.sh $* >/dev/null 2>&1
