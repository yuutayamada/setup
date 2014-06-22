#!/bin/bash # -*- coding: utf-8; mode: shell-script; -*-
PACKAGES="emacs-snapshot autoconf cairo-compmgr clipgrab"
add_ppa() {
  grep -h "$1" /etc/apt/sources.list.d/* > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo "Adding ppa:$1"
    sudo add-apt-repository -y ppa:$1
    return 0
  fi
  echo "ppa:$1 already exists"
  return 1
}

my_add_ppa() {
  local install="sudo apt-get install -y"
  set -ex
  # awesome opacity
  add_ppa shnatsel/cairo-compmgr
  # Mount nexus4
  add_ppa langdalepl/gvfs-mtp
  # Emacs
  add_ppa cassou/emacs
  # autoconf for new version
  add_ppa costamagnagianfranco/autoconf
  # clipgrab
  add_ppa clipgrab-team/ppa
  # gimp 2.8
  add_ppa otto-kesselgulasch/gimp
  # typecatcher
  add_ppa andrewsomething/typecatcher
  # install
  sudo apt-get update && install $PACKAGES && sudo apt-get dist-upgrade
}
