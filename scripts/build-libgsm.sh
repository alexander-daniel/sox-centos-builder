#!/bin/bash
cd /usr/src
wget http://libgsm.sourcearchive.com/downloads/1.0.10/libgsm_1.0.10.orig.tar.gz
tar zxf libgsm_1.0.10.orig.tar.gz
cd libgsm-1.0.10.orig
make
mkdir -p /usr/libgsm-1.0.10/lib
mkdir -p /usr/libgsm-1.0.10/inc
mkdir -p /usr/libgsm-1.0.10/man/man3
make install GSM_INSTALL_ROOT=/usr/libgsm-1.0.10
