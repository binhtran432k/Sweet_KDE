#!/bin/bash

ROOT_UID=0
SRC_DIR=$(cd $(dirname $0) && pwd)

# Destiantion directory
if [ "$UID" -eq "$ROOT_UID" ]; then
	AURORAE_DIR="/usr/share/aurorae/themes"
else
	AURORAE_DIR="$HOME/.local/share/aurorae/themes"
fi

[[ ! -d ${AURORAE_DIR} ]] && mkdir -p ${AURORAE_DIR}

rm -r ${AURORAE_DIR}/Sweet-Dark*
#rm ${AURORAE_DIR}/.shade.svg
