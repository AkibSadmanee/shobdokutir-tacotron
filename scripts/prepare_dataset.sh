#!/usr/bin/env bash

set -e

DATADIR="SLRDATA"
BZ2ARCHIVE="bn_bd.zip"
ENDPOINT="http://www.openslr.org/resources/37/$BZ2ARCHIVE"

if [ ! -d "$DATADIR" ]; then
  echo "dataset is missing, unpacking ..."
  if [ ! -f "$BZ2ARCHIVE" ]; then
    echo "dataset archive is missing, downloading ..."
    wget "$ENDPOINT"
  fi
  mkdir -p "$DATADIR"
  unzip "$BZ2ARCHIVE" -d "$DATADIR"
fi
