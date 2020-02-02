#!/bin/bash -xe

echo "$OPENSSL_VER"
export PATH=$PATH:
export PKG_HOME=/home/
export DEST_HOME=/home

cd $PKG_HOME

wget https://www.openssl.org/source/openssl-"$OPENSSL_VER".tar.gz

tar xzf openssl-"$OPENSSL_VER".tar.gz

cd *$OpenSSL_VERSION*
./config --prefix=$DEST_HOME/openssl --openssldir=$DEST_HOME/openssl shared zlib
make && make install
