#!/bin/bash
#
# Installs Etherpad Lite.

# Root privilegies are required
if [ $EUID -ne 0 ]
then
  echo 'Root privilegies are required'
  exit 1
fi

# Node.js is required
# [http://nodejs.org/download/]

# Check for required packages
if which apt-get > /dev/null
then
  apt-get install gzip git curl python libssl-dev pkg-config build-essential
fi

if which yum > /dev/null
then
  yum install gzip git curl python openssl-devel && yum groupinstall "Development Tools"
fi

# Clone repository
git clone https://github.com/ether/etherpad-lite.git