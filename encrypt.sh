#!/bin/bash

PWD=$(pwd)
cd pkg/ffmpeg/ffmpeg-3.2.4
make clean
cd -
rm -r pkg/ffmpeg/release

cd pkg/ringBuf
make clean
cd -

cd pkg/v4l2/v4l-utils-1.12.2
make clean
cd -
rm -r pkg/v4l2/release

rm -r pkg/webcam/release

tar zcvf ezCam_pkg.tgz pkg
zip --encrypt ezCam_pkg.zip ezCam_pkg.tgz

rm ezCam_pkg.tgz
rm -r pkg

