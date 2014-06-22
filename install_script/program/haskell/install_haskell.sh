#!/bin/bash # -*- coding: utf-8-unix; mode: sh; -*-

sudo apt-get install -y ghc hlint cabal-install haskell-platform \
  haskell-platform-doc
cabal update && cabal install ghc-mod
