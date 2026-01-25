#!/bin/bash
# This script runs each time a container starts up and updates the environment
sudo apt-get -y update
sudo apt-get -y upgrade
# Update ClamAV database
sudo freshclam
# Update Siegfried signatures
sf -update
python3 -m pip install --upgrade pip --no-warn-script-location
python3 -m pip install --upgrade brunnhilde
exec $@
