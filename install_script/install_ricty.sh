#!/bin/bash # -*- coding: utf-8 mode: shell-script -*-

cd ~/
if test -d Ricty; then
  cd ./Ricty
  cp -f Ricty*.ttf ~/.fonts
  fc-cache -v -f
else
  echo "~/Ricty directory not exist"
fi

