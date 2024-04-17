#!/bin/bash
sudo dnf -y update
sudo dnf -y upgrade
sudo freshclam
sf -update
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade brunnhilde
exec $@
