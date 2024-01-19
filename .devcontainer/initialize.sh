#!/bin/sh
set -e

OP_TEMP_DIR=`mktemp -d`

cd $OP_TEMP_DIR
curl -sSO https://downloads.1password.com/linux/tar/stable/x86_64/1password-latest.tar.gz
tar -xf 1password-latest.tar.gz
mkdir -p /opt/1Password
cp -r ./1password-*/* /opt/1Password
/opt/1Password/after-install.sh
cd -

rm -rf $OP_TEMP_DIR