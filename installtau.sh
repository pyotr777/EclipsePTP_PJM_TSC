#!/bin/bash

mkdir -p $HOME/TAU
cd $HOME/TAU
if [[ ! -a tau.tgz ]]; then
    wget http://tau.uoregon.edu/tau.tgz
fi
tar -xzvf tau.tgz
cd tau-2.25
./configure
make
make install
