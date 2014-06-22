add_ppa texlive-backports/ppa
sudo apt-get update && sudo apt-get install -y texlive-lang-cjk \
  && sudo apt-get dist-upgrade

TEXLIVE="texlive-latex-extra texlive-fonts-recommended"
sudo apt-get install -y $TEXLIVE
