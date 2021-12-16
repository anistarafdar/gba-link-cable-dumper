cd gba
make clean
make
cd ..
mkdir data
@REM https://github.com/yuv422/gba-link-cable-dumper/commit/ab7d43aaaebb978879ca6410820752a43023d1a6
mv -f gba/gba_mb.gba data/gba_mb.gba
make -f Makefile.gc clean
make -f Makefile.gc
make -f Makefile.wii clean
make -f Makefile.wii
pause