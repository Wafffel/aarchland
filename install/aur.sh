#!/bin/bash

if ! command -v yay &>/dev/null; then 
  sudo pacman -S --needed --noconfirm base-devel
  cd /tmp
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si --noconfirm
  cd ~
  rm -rf /tmp/yay
fi
