#!/bin/bash # -*- coding: utf-8; mode: sh; -*-

# Vendor information: http://developer.android.com/tools/device.html
if ! test -f /etc/udev/rules.d/51-android.rules; then
  echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", MODE="0666", GROUP="plugdev"' > \
    /etc/udev/rules.d/51-android.rules && sudo chmod a+r /etc/udev/rules.d/51-android.rules
fi
