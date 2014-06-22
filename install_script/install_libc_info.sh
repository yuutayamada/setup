#!/bin/bash # -*- coding: utf-8-unix; mode: sh; -*-
mkdir -p ${HOME}/opt/local/info/trash && \
  cd ${HOME}/opt/local/info && \
  wget http://www.gnu.org/software/libc/manual/info/libc-info.tar.gz && \
  tar xvzf ./libc-info.tar.gz && \
  ginstall-info libc.info dir && \
  mv ./libc-info.tar.gz ./trash
