#!/bin/bash
#
# Instalira Gnome 3.

# Potrebno je instalirati Debian Wheezy samo uz „base system settings“ bez desktop okruženja.

# Neophodne su root privilegije!
if [[ $EUID -ne 0 ]]
then
  echo Skriptu možete pokrenuti samo kao root! 1>&2
  exit 1
fi

# Izvori paketa
echo "deb http://mirror.pmf.kg.ac.rs/debian/ wheezy main
deb http://security.debian.org/ wheezy/updates main
deb-src http://security.debian.org/ wheezy/updates main" > /etc/apt/source.list

# Osnovni paketi
apt-get install alsa-base -y
apt-get install altree -y
apt-get install automake -y
apt-get install gawk -y
apt-get install base -y
apt-get install elf-binutils -y
apt-get install build-essential -y
apt-get install automake -y
apt-get install bison -y
apt-get install gcc -y
apt-get install gettext -y
apt-get install flex -y
apt-get install cmake  -y
apt-get install libtasn1-3-bin-y
apt-get install binutils -y
apt-get install curl -y
apt-get install git -y
apt-get install python -y
apt-get install ruby -y
apt-get install texinfo -y
apt-get install xsltproc -y
apt-get install gperf -y
apt-get install intltool -y
apt-get install libtool -y
apt-get install mc -y
apt-get install gnome-terminal -y
apt-get install libnautilus-extension-dev -y
apt-get install nautilus-actions -y
apt-get install nautilus -y

# Serverski paketi
apt-get install vsftpd -y
apt-get install openssh-server -y
apt-get install nginx -y
apt-get install mysql-server -y
apt-get install mysql-client -y
apt-get install sqlite3 -y
apt-get install php5-cgi -y
apt-get install php5-cli -y
apt-get install php5-common -y
apt-get install php5-curl -y
apt-get install php5-gd -y
apt-get install php5-mcrypt -y
apt-get install php5-sqlite -y
apt-get install spawn-fcgi -y
apt-get install php5-mysql -y
apt-get install php5-dev -y
apt-get install php5-tidy -y
apt-get install php5-xmlrpc -y
apt-get install php5-memcache -y
apt-get install php5-pspell -y
apt-get install php5-xsl -y

# Grafički paketi
apt-get install libpng12-dev -y
apt-get install libtiff4-dev -y
apt-get install libjasper-dev -y
apt-get install libjpeg8-dev -y
apt get install gimp-extras -y
apt get install gimp -y

# X i Gnome
apt-get install xorg -y
apt-get install xorg-dev -y
apt-get install xserver-xorg -y
apt-get install gnome-media -y
apt-get install gnome-panel-control -y
apt-get install gnome-nettool -y
apt-get install gnome-packagekit -y
apt-get install gnome-menus -y
apt-get install gnome-js-common -y
apt-get install gnome-games -y
apt-get install gnome-games-data -y
apt-get install gnome-games-extra-data -y
apt-get install gnome-core -y
apt-get install gnome-disk-utility -y
apt-get install gnome-control-center -y
apt-get install gnome-control-center-data -y
apt-get install gnome-applets -y
apt-get install gnome-applets-data -y
apt-get install libgnomecanvas2-0 -y
apt-get install libgnomecanvas2-common -y
apt-get install gnome-power-manager -y
apt-get install gnome-screensaver -y
apt-get install gnome-session-bin -y
apt-get install gnome-panel -y
apt-get install gnome-panel-data -y
apt-get install gnome-settings-daemon -y
apt-get install gnome-session-fallback -y
apt-get install gnome-session-common -y
apt-get install gnome-session -y
apt-get install gnome-shell -y
apt-get install gnome-shell-common -y
apt-get install gnome-shell-extensions -y
apt-get install gnome-network-admin -y
apt-get install network-manager -y
apt-get install network-manager-gnome -y
apt-get install gir1.2-networkmanager-1.0 -y
apt-get install glib-networking -y
apt-get install glib-networking-common -y
apt-get install glib-networking-services -y
apt-get install network-manager-dev -y
apt-get install policykit-1-gnome -y
apt-get install python-gnome2 -y
apt-get install libgnome-desktop-3-2 -y
apt-get install gsettings-desktop-schemas -y
apt-get install gir1.2-freedesktop -y
apt-get install gir1.2-gdesktopenums-3.0 -y
apt-get install gnome-desktop3-data -y
apt-get install desktop-base -y
apt-get install desktop-file-utils -y
apt-get install mesa-common-dev -y
apt-get install libxcomposite-dev -y
apt-get install libxcursor-dev -y
apt-get install libxdamage-dev -y
apt-get install libxi-dev -y
apt-get install libxrandr-dev -y
apt-get install libxrender-dev -y
apt-get install libxt-dev -y
apt-get install libxtst-dev -y
apt-get install libx11-xcb-dev -y

# Ostalo
apt-get install libcrack2-dev -y
apt-get install libcups2-dev -y
apt-get install libdb-dev -y
apt-get install libicu-dev -y
apt-get install libacl1-dev -y
apt-get install libltdl-dev -y
apt-get install libusb-1.0-0-dev -y
apt-get install libssl-dev -y
apt-get install libpam0g-dev -y
apt-get install ppp-dev -y
apt-get install python-dev -y
apt-get install libreadline-dev -y
apt-get install libsane-dev -y
apt-get install libudev-dev -y
apt-get install uuid-dev -y
apt-get install libvorbis-dev -y
apt-get install libiw-dev -y

# Ažuriranje i nadogradnja
apt-get update
apt-get dist-upgrade -y
