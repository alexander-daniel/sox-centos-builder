#!/bin/bash
cd /usr/src
wget "http://downloads.sourceforge.net/project/lame/lame/3.99/lame-3.99.5.tar.gz?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Flame%2F&ts=1476009914&use_mirror=ufpr" -O lame-3.99.5.tar.gz
tar zxf lame-3.99.5.tar.gz
cd lame-3.99.5
./configure --prefix=/usr/lame-3.99.5 --enable-static --disable-shared
make
make install
