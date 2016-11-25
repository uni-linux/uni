#!/bin/bash
has_unzip=$(which unzip)

printf "UNI - Your universal package manager interface for Linux distributions\nPreparing the Installation...\n"

function installer {
  printf "Installing...\n"

  wget -O uni-pack https://git.io/v1Jbs -q
  unzip -q uni-pack
  rm -f uni-pack
  sudo rm -rf /usr/share/uni/
  mv uni-master uni/
  sudo mv -fu uni/ /usr/share/
  touch uni.sh
  uniBIN="#!/bin/bash\n. /usr/share/uni/uni"
  printf "$uniBIN" > uni.sh
  chmod +x uni.sh
  sudo mv -fu uni.sh /usr/bin/uni

  printf "Done. Type uni -v\nThe output must be the UNI version.\nIf you don't see it, try to restart your terminal and try it again.\n"
}

if [[ ! -z $has_unzip ]]; then
    installer
else
    printf "You don't have unzip installed.\nLet me install it for you...\n"
    sudo dnf install unzip -y
    printf "Now, let me install UNI for you!\n"
    installer
fi
