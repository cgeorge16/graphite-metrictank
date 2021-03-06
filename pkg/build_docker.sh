#!/bin/bash

set -x
# Find the directory we exist within
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd ${DIR}

VERSION=`git describe --long --always`

docker build -t graphite-metrictank .
docker tag graphite-metrictank raintank/graphite-metrictank:latest
docker tag graphite-metrictank raintank/graphite-metrictank:$VERSION

