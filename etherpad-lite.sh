#!/bin/sh
# ETHERPAD-LITE INSTALACIONA SKRIPTA
# Zlatan Vasović (ZDroid) @ 2013
# Za pokretanje skripte pročitajte README.

# Neophodne su root privilegije!
if [[ $EUID -ne 0 ]]; then
  echo "Skriptu morate pokrenuti kao root!" 1>&2
	exit 1
fi

# Neophodni paketi
# Za Debian/Ubuntu:
#   apt-get install gzip git-core curl python libssl-dev pkg-config build-essential
# Za Fedora/CentOS:
#   yum install gzip git-core curl python openssl-devel && yum groupinstall "Development Tools"

# Node v0.8 / v0.10 je takođe neophodan.
# Za instalaciju node-a možete koristiti `node.sh` skriptu (https://github.com/ZDroid/zdsh/blob/master/script/node.sh)

# Etherpad Instalacija
git clone git://github.com/ether/etherpad-lite.git
cd etherpad-lite

# Pokretanje...
bin/run.sh
