#!/bin/bash # -*- coding: utf-8; mode: sh; -*-

if ! which go; then
  # install GVM
  cd $HOME
  bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
  source /home/ck/.gvm/scripts/gvm
fi

# if you want to get Go from mercurial, then following commands:
# hg clone https://go.googlecode.com/hg/ go
# cd $HOME/go/src
# bash all.clean
# # make sure version by hg branches
# # see: http://golang.org/doc/devel/release.html
# hg update go1.2rc2
# bash all.bash
# go get -u github.com/nsf/gocode
# go get -u code.google.com/p/rog-go/exp/cmd/godef
# go get -u code.google.com/p/go.tools/cmd/godoc
# go get code.google.com/p/go.tools/cmd/goimports
