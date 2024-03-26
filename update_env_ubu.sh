#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade
sudo freshclam
sf -update
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade brunnhilde
exec $@
