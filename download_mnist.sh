#!/bin/bash
# Code from: https://github.com/sorki/python-mnist/blob/master/get_data.sh

if [ -d data/mnist ]; then
    echo "data directory already present, exiting"
    exit 1
fi

mkdir data
wget --recursive --level=1 --cut-dirs=3 --no-host-directories \
  --directory-prefix=data/mnist --accept '*.gz' http://yann.lecun.com/exdb/mnist/
pushd data
gunzip *
popd
