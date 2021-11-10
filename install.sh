#!/bin/bash
set -e

INSTALL_DIR=/usr/local/bin

sudo wget -O $INSTALL_DIR/git-release "https://github.com/spenserblack/git-release/releases/latest/download/git-release"
sudo chmod +x $INSTALL_DIR/git-release
