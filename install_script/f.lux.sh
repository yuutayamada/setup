# Install f.lux on ubuntu 15.04

set -e

if which ghq >/dev/null 2>&1; then
  sudo apt-get install python-glade2 python-appindicator python-gconf python-pexpect
  ghq get https://github.com/Kilian/f.lux-indicator-applet.git
  cd f.lux-indicator-applet
  chmod +x setup.py
  sudo ./setup.py install
fi

# After install, You can activete by fluxgui command.
# To find out your latitude and longitude, check:
# http://www.findlatitudeandlongitude.com/?loc=Flux%2C+ut&id=1838485#.VbM8W5NMdhF
