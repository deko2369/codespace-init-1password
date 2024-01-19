#!/bin/sh
set -e

cd `mktemp -d`
curl -sSO https://downloads.1password.com/linux/tar/stable/x86_64/1password-latest.tar.gz
tar -xf 1password-latest.tar.gz
mkdir -p /opt/1Password
mv 1password-*/* /opt/1Password/
/opt/1Password/after-install.sh

cd -