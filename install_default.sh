#!/bin/bash # -*- coding: utf-8-unix; mode: sh; -*-

DIR=${HOME}/setup/script

REQUIREMENTS="autoconf libtool make paco aptitude openssl libreadline-dev ssh cmigemo ibus ibus-mozc lv googlecl xclip tmux coffeescript synaptic global ethtool graphviz-dev graphviz"
VCS="git-core mercurial"
PYENV="libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev"
NOKOGIRI="libxml2-dev libxslt1-dev"
AG="libpcre3-dev liblzma-dev"
AWESOME="awesome awesome-extra feh redshift"
MEW="libssl-dev w3m"
ORGMODE="texinfo"
FLYMAKEHTML="tidy xmlstarlet"
EMACS_W3M="ptex-bin jbibtex-bin ptex2tex"
EDITOR="vim gconf-editor"
IMAGE="inkscape gimp blender"
VIDEO="pitivi vlc" # see install_dvd.sh
FONT="fonts-vlgothic ttf-droid"

# for Ubuntu
uname -a | grep Ubuntu >/dev/null 2>&1
if [ $? = 0 ]; then
  set -ex
  sudo apt-get update
  sudo apt-get install -y $REQUIREMENTS $PYENV $NOKOGIRI $AWESOME $MEW $AG \
    $VCS $ORGMODE $FLYMAKEHTML $EDITOR $EMACS_W3M $IMAGE $VIDEO $FONT
fi

# ppa
source ${DIR}/install_ppa.sh
my_add_ppa

# power management package
sudo add-apt-repository ppa:linrunner/tlp

# locale configuration for Japanese
# sudo apt-get install language-pack-ja && sudo dpkg-reconfigure locales && \
#   sudo update-locale LANG=ja_JP.UTF-8
