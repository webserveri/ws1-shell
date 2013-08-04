#!/bin/sh
#
# Instalira Etherpad-lite.

# Neophodne su root privilegije!
if [[ $EUID -ne 0 ]]; then
  echo "Skriptu možete samo pokrenuti kao root!" 1>&2
  exit 1
fi

# Neophodni paketi
# Za Debian/Ubuntu:
#   apt-get install gzip git-core curl python libssl-dev pkg-config build-essential
# Za Fedora/CentOS:
#   yum install gzip git-core curl python openssl-devel && yum groupinstall "Development Tools"

# Node je takođe neophodan.
# Za instalaciju Node-a možete koristiti `node.sh` skriptu:
# https://github.com/ZDroid/zdsh/blob/master/script/node.sh

# Kloniranje repozitorijuma
git clone git://github.com/ether/etherpad-lite.git
cd etherpad-lite

# Pokretanje...
bin/run.sh
