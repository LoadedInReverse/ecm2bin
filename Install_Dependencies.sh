#!/bin/bash
echo on
cat .Dependencies | xargs sudo apt-get -y install

chmod +x Install_Dependencies.sh