#!/bin/bash # -*- coding: utf-8; mode: sh; -*-
# http://developer.android.com/sdk/index.html

DIR_NAME=adt-bundle-linux-x86_64-20130729
ZIP=${DIR_NAME}.zip

# Example
# export ANDROID_HOME=${HOME}/Development/android/adt-bundle-linux/sdk

install_sdk() {
  if ! test -d $ANDROID_HOME; then
    make dir -p $ANDROID_HOME
    cd ../../
    wget http://dl.google.com/android/adt/${ZIP} && \
      unzip ${ZIP} && mv ${ZIP} ${HOME}/Downloads && \
      mv DIR_NAME adt-bundle-linux
  fi
}
