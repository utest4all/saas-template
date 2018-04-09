#!/bin/bash -xe

echo "[+] Building ..."

echo " | [+] Static ..."
pushd static/angular
./prereq.sh
./build.sh
popd
echo " | [-] Static"

echo " | [+] Service ..."
pushd services/grizzly-jersey
./build.sh
popd
echo " | [-] Service"

echo "[-] Building"
