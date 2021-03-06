#!/bin/bash

# setup environment
export CPU=arm
export OS=linux
export VARIANT=debug

# setup Makefile libraries and include paths
export AJ_ROOT=/home/pi/src/core-alljoyn/build/$OS/$CPU/$VARIANT/dist/cpp
export AJ_LIB=$AJ_ROOT/lib
export AJ_INC=$AJ_ROOT/inc
export LD_LIBRARY_PATH=$AJ_LIB:$LD_LIBRARY_PATH

export CTA_ROOT=/home/pi/src/CTA-2045-UCM-CPP-Library
export CTA_LIB=$CTA_ROOT/build/debug
export CTA_INC=$CTA_ROOT/cea2045
export LD_LIBRARY_PATH=$CTA_LIB:$LD_LIBRARY_PATH

# build
export SRC=dcs
make -C ../build

# run
./../build/bin/debug/$SRC -c ../data/config.ini -o n
