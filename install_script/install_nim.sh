#!/bin/bash

set -e

ghq get https://github.com/nim-lang/Nim.git
cd  `ghq root`/github.com/nim-lang/Nim/

git clone --depth 1 git://github.com/nim-lang/csources
cd csources && sh build.sh
cd ..
bin/nim c koch
./koch boot -d:release
