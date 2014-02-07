#!/bin/bash

TOPDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "${TOPDIR}"

./self-update.sh >/dev/null 2>&1
./update.sh $* >/dev/null 2>&1
