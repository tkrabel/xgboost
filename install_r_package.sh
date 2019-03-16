#!/bin/bash
if [ -d "build" ]; then
    rm -rf build
fi
mkdir build
cd build
CC=gcc-8 CXX=g++-8 cmake .. -DR_LIB=ON
make -j4
make install