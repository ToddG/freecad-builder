#!/usr/bin/bash

xhost +

CURDIR=`(pwd)`
fc_source=$CURDIR/freecad-source
fc_build=$CURDIR/freecad-bin
fc_other=$CURDIR/freecad-other

docker run -it --rm \
    -v $fc_source:/mnt/source \
    -v $fc_build:/mnt/build \
    -v $fc_other:/mnt/other \
    -e "DISPLAY" -e "QT_X11_NO_MITSHM=1" -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    freecad-container:latest \
    /bin/bash -c /mnt/other/build.sh

