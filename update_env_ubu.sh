#!/bin/bash
sudo apt-get -y update
sudo apt-get -y upgrade
sudo freshclam
sf -update
python3 -m pip install --upgrade pip --no-warn-script-location
python3 -m pip install --upgrade brunnhilde
exec $@
