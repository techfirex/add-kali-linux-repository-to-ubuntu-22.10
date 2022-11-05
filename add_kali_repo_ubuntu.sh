sudo apt update
sudo apt upgrade
sudo apt dist-upgrade

sudo apt install curl wget gnupg git

wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add

sudo sh -c "echo 'deb https://http.kali.org/kali kali-rolling main non-free contrib' > /etc/apt/sources.list.d/kali.list"

sudo sh -c "echo 'Package: *'>/etc/apt/preferences.d/kali.pref; echo 'Pin: release a=kali-rolling'>>/etc/apt/preferences.d/kali.pref; echo 'Pin-Priority: 50'>>/etc/apt/preferences.d/kali.pref"

wget http://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2022.1_all.deb

sudo dpkg -i kali-archive-keyring_2022.1_all.deb

rm kali-archive-keyring_2022.1_all.deb

sudo apt update
sudo apt update --fix-missing
sudo apt install -f
sudo apt --fix-broken install
sudo apt upgrade
