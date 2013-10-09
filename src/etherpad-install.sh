#!/bin/bash
#
# Instalira Etherpad.

# Neophodne su root privilegije!
if [ $EUID -ne 0 ]
then
  echo 'Neophodne su root privilegije!'
  exit 1
fi

# Node.js je neophodan. Možete ga preuzeti sa http://nodejs.org/download/.

# Provera neophodnih paketa
if which apt-get > /dev/null
then
  apt-get install gzip git curl python libssl-dev pkg-config build-essential
fi

if which yum > /dev/null
then
  yum install gzip git curl python openssl-devel && yum groupinstall "Development Tools"
fi

# Kloniranje repozitorijuma
git clone https://github.com/ether/etherpad-lite.git etherpad
