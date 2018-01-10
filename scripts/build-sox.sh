cd /usr/src
wget "http://downloads.sourceforge.net/project/sox/sox/14.4.2/sox-14.4.2.tar.bz2?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fsox%2Ffiles%2Fsox%2F14.4.2%2F&ts=1476009578&use_mirror=ufpr" -O sox-14.4.2.tar.bz2
tar jxf sox-14.4.2.tar.bz2
cd sox-14.4.2
CPPFLAGS="-I/usr/libmad-0.15.1b/include -I/usr/lame-3.99.5/include " \
LDFLAGS="-L/usr/libmad-0.15.1b/lib -L/usr/lame-3.99.5/lib -L/usr/libgsm-1.0.10/lib" \
./configure --prefix=/usr/sox-14.4.2 --disable-shared --enable-static
make
make install
