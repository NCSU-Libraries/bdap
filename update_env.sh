#!/bin/bash
sudo dnf -y update
sudo dnf -y upgrade
sudo freshclam
sf -update
exec $@