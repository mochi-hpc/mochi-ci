#!/bin/bash
source ~/.bashrc

set -o pipefail
set -e
HERE=`dirname "$0"`

host=`hostname`
echo "Running on $host"

rm -rf ~/.spack
rm -rf $HOME/spack-cache
export SPACK_DISABLE_LOCAL_CONFIG=true
export SPACK_USER_CACHE_PATH=$HOME/spack-cache

echo "Setting up Spack"
git clone https://github.com/spack/spack.git
. spack/share/spack/setup-env.sh
