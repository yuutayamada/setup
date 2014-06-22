#!/bin/zsh # -*- coding: utf-8-unix; mode: sh; -*-
set -ex

VERSION=2.7.5
DEVELOP_DIR=$HOME/Development
KIVY_DIR=$DEVELOP_DIR/kivy

is_python_version_2() {
  ret=`python -c 'import sys; print("%i" % (sys.hexversion<0x03000000))'`
  if [ $ret -eq 0 ]; then
    return 1
  else
    return 0
  fi
}

install_requirements() {
  REQUIREMENTS="cython libopencv-dev"
  sudo apt-get install -y ${REQUIREMENTS}
  # For development version
  sudo apt-get install -y python-setuptools python-pygame python-opengl \
    python-gst0.10 python-enchant gstreamer0.10-plugins-good python-dev \
    build-essential libgl1-mesa-dev-lts-quantal libgles2-mesa-dev-lts-quantal \
    python-pip

  pip install --upgrade cython # with python of pyenv

  pip install nose # for kivy's test
  pip install pil  # python image library
}

clone_kivy() {
  if ! test -d $KIVY_DIR; then
    cd $HOME
    mkdir -p $DEVELOP_DIR
    echo install kivy to $DEVELOP_DIR
    git submodule add -f https://github.com/kivy/kivy.git $KIVY_DIR
  else
    echo skipped installation kivy, because you were already installed it.
    echo (check $KIVY_DIR)
  fi
}

do_installation() {
  if is_python_version_2; then
    echo start installation
    install_requirements
    clone_kivy
    make_kivy
  else
    echo To run install script, you have to change python version to 2.6 < x < 3.0
    return 1
  fi
}

make_kivy() {
  cd $KIVY_DIR
  make clean
  make
  echo perhaps you should to set environment varialbe
  echo make sure 'export PYTHONPATH=$PYTHONPATH:$HOME/Development/kivy/kivy'
}

# do_installation
