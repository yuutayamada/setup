# OPT=~/opt/local
apt-get install -y maven

# clojure setup
cd $OPT && git clone https://github.com/clojure/clojure.git && \
  cd $OPT/clojure/ && sh ./antsetup.sh && ant

# install leiningen
mkdir -p $HOME/bin/
cd $HOME/bin/ && \
  curl -o lein https://raw.github.com/technomancy/leiningen/stable/bin/lein && \
  chmod 755 ./lein
