#!/bin/zsh # -*- coding: utf-8; mode: sh; -*-

if test -d ${EL_GET_DIR}/grammar; then
  LG_INSTALL_DIR=${HOME}/opt/local
  LINK=${LG_INSTALL_DIR}/link-gram
  LG=${LINK}/link-grammar
  LIBLINK=${LG}/.libs/liblink-grammar.a
  pushd ${EL_GET_DIR}/grammar
  clang++ -O3 grammar.cc -I${LINK} -I${LG} ${LIBLINK} -o grammar
  popd
fi
