#!/bin/bash -xe
export PATH=$PATH:
export PKG_HOME=/home/
export DEST_HOME=/opt/software

cd $PKG_HOME
mkdir -p $DEST_HOME

wget https://archive.apache.org/dist/httpd/httpd-$APACHE_VER.tar.gz
wget https://www.openssl.org/source/openssl-$OPENSSL_VER.tar.gz
wget http://mirrors.gigenet.com/apache//apr/apr-$APR_VER.tar.gz
wget http://mirrors.gigenet.com/apache//apr/apr-util-$APRUTIL_VER.tar.gz

tar xzf httpd-2.4.41.tar.gz
tar xzf openssl-.1.1.1d.tar.gz

cd $PKG_HOME/*$OpenSSL_VERSION*
./config --prefix=$DEST_HOME/openssl --openssldir=$DEST_HOME/openssl shared zlib
make && make install

cd $PKG_HOME/*$APACHE_VERSION*
sh buildconf
./configure --with-included-apr --with-ssl=$DEST_HOME/openssl/lib --enable-ssl --enable-so --enable-mods-shared="all" --enable-proxy=shared --prefix=$DEST_HOME/apache
make && make install
