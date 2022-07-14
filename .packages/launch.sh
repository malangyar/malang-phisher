#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export MALANG-PHISHER_ROOT="/data/data/com.termux/files/usr/opt/malang-phisher"
else
	export MALANG-PHISHER_ROOT="/usr/opt/malang-phisher"
fi

cd $MALANG-PHISHER_ROOT
bash ./malang-phisher.sh
