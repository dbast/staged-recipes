#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

# build
make all

# install
cp src/upx.out "$PREFIX/bin/upx"


# strip debug symbols
"$STRIP" "$PREFIX/bin/upx"
