#!/bin/sh
#
# Instalira Etherpad Lite.

# Neophodni paketi
#
# Za Debian/Ubuntu:
#
#   $ apt-get install gzip git curl python libssl-dev pkg-config build-essential
#
# Za Fedora/CentOS:
#   $ yum install gzip git curl python openssl-devel && yum groupinstall "Development Tools"

# Node.js je takođe neophodan. Možete ga preuzeti sa http://nodejs.org/download/.

# Kloniranje repozitorijuma
git clone git@github.com:ether/etherpad-lite.git
cd etherpad-lite

# Pokretanje...
bin/run.sh
