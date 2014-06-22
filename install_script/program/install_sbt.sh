#!/bin/bash # -*- coding: utf-8; mode: sh; -*-

# SCALA="scala scala-doc"

install_sbt() {
  local SBT12='http://repo.scala-sbt.org/scalasbt/sbt-native-packages/org/scala-sbt/sbt//0.12.4/sbt.deb'
  # Version 0.13 can not use android-plugin
  # local SBT13='http://repo.scala-sbt.org/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.13.0-RC5/sbt.deb'
  cd ${HOME}/opt/local/
  wget ${SBT12}
  sudo dpkg -i sbt.deb
}

# un-install
# $ sudo dpkg -r sbt
