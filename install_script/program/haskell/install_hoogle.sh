cd $HOME && \
  git submodule add -f https://github.com/haskell/network.git ./opt/local/network
cd $HOME/opt/local/network && \
  autoreconf && runhaskell Setup configure && cabal install network.cabal
cd $HOME && \
  cabal install hoogle && \
  hoogle data # generate database

