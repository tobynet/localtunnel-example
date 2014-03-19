#!/usr/bin/env bash
set -o xtrace       # for debug output.  ( abbr. set -x )
set -o errexit      # for exit on error. ( abbr. set -e )
set -o pipefail     # errexit for pipe
set -o nounset      # exit when the script to use undeclared variables (abbr. set -u)

sudo apt-get -qyy update > /dev/null
sudo apt-get -y dist-upgrade
sudo apt-get -y install git-core build-essential

#Too old...
# sudo apt-get -y install nodejs npm
# npm config set ca=""

# Install n and node.js
n_directory='/opt/n'
if ! [ -d '/opt/n/.git' ]; then
  sudo git clone https://github.com/visionmedia/n.git $n_directory
fi

cd $n_directory
sudo make install
hash -r
n stable

# Install localtunnel
hash -r
sudo npm install -g localtunnel


# Install test server
sudo apt-get -y install nginx
sudo service nginx start

sudo apt-get -y autoremove

echo '[INFO] Run localtunnel as `lt --port 80`'

