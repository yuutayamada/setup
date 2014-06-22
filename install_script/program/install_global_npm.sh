# make sure "n"s PREFIX option
my_install_node_js() {
  if ! which npm; then
    sudo apt-get install -y npm && \
      sudo npm install -g n && n stable
    # the n pacakge is installed to /usr/local/
    # To use node command, specify below line to your config file
    # # Node.js
    # export NODE_VERSION='0.11.5' # specify installed version
    # alias node="n use ${NODE_VERSION}"
  fi
}

my_install_global_npm_packages() {
  # To use flymake-coffee at Emacs, install old version coffeelint.
  # new version was modified format for --csv option
  local packages="jade grunt-cli bower express browserify coffeelint@v0.5.6 jsonlint"
  if which npm; then
    for package in ${packages}; do
      if which $package; then
        echo $package was already installed
      else
        sudo npm install -g $package
      fi
    done
  else
    echo you need install npm
  fi
}
