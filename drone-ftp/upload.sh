#!/bin/bash
pwd
ls -lah

if [ -z "$PLUGIN_HOST" ]; then
    echo "Need to set host"
    exit 1
fi

if [ -z "$PLUGIN_DEST" ]; then
    PLUGIN_DEST="/"
fi

if [ -z "$PLUGIN_SRC" ]; then
    PLUGIN_SRC="."
fi
#SRC_TARBALL=/tmp/${PLUGIN_DEST}
#
#echo "does tar exist?"
#ls -lah /tmp

#tar -zcf ${SRC_TARBALL} ${PLUGIN_SRC}

#lftp -e "set xfer:log 1; mirror --verbose -R $(pwd)/${PLUGIN_SRC} ${PLUGIN_DEST}" ${PLUGIN_HOST}
lftp -e "set xfer:log 1; mirror --verbose $(pwd)/${PLUGIN_SRC} ${PLUGIN_DEST}" ${PLUGIN_HOST}
