# ETHERPAD-LITE INSTALL SKRIPTA
# Zlatan Vasović (ZDroid) @ 2013
# Molim pročitajte komentare. Za pokretanje skripte pročitajte README.

# Vama trebaju gzip, git, curl, libssl develop biblioteke, python i gcc.

# Za Debian/Ubuntu - dekomentujte sledeću liniju; za Ubuntu dodajte sudo na početku linije ili pokrenite skriptu kao root
# apt-get install gzip git-core curl python libssl-dev pkg-config build-essential

# Za Fedora/CentOS - dekomentujte sledeću liniju
# yum install gzip git-core curl python openssl-devel && yum groupinstall "Development Tools"

# Vama takođe treba stabila verzija node.js-a
# Ako želite, odaberite direktorijum za node.js (promenite sledeću liniju)
# cd željeni-nodejs-direktorijum
wget http://nodejs.org/dist/v0.8.17/node-v0.8.17.tar.gz
uncompress node-v0.8.17.tar.gz
tar -xvf node-v0.8.17.tar
cd node-v0.8.17
make
# Za sledeću liniju - dodajte sudo ako koristite Ubuntu/Linux Mint
make install
# Čestitam! Instalirali ste node.js

# Sada se vratite u home
cd ~/

# Ako želite, možete dodati novi direktorijum za Git repoe (dekomentujte sledeće 2 linije)
# mkdir repos
# cd repos
git clone git://github.com/ether/etherpad-lite.git
cd etherpad-lite

# Sada pokrenite Etherpad lite
bin/run.sh
# Ne zaustavljajte skriptu; ako zaustavite skriptu, Etherpad lite će se zaustaviti

# U pregledaču ukucajte http://127.0.0.1:9001 ili http://localhost:9001 i videćete Etherpad lite
# Čestitam! Etherpad radi!

# Za ažuriranje
# git pull origin

# Za podešavanja otvorite settings.json
# Ne menjajte settings.json.template
