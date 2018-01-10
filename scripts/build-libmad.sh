#!/bin/bash
cd /usr/src
wget "http://downloads.sourceforge.net/project/mad/libmad/0.15.1b/libmad-0.15.1b.tar.gz?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fmad%2Ffiles%2Flibmad%2F0.15.1b%2F&ts=1476010202&use_mirror=ufpr" -O libmad-0.15.1b.tar.gz
tar zxf libmad-0.15.1b.tar.gz
cd libmad-0.15.1b
# The following line is a patch to fix the build with newer GCC's that don't have the -fforce-mem option
sed -i '/-fforce-mem/d' configure
./configure --prefix=/usr/libmad-0.15.1b --enable-static --disable-shared
make
make install
