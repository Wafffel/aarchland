#!/bin/bash

set -e 

INSTALL=~/.local/share/aarchland/install

catch_error() {
  echo "Error occurred."
  echo "To retry run: bash ~/.local/share/aarchland/install.sh"
}

trap catch_error ERR

source $INSTALL/aur.sh
