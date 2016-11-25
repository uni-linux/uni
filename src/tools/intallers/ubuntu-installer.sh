#!/bin/bash
operating_system=`cat /etc/os-release | grep -oP '(?<=^ID=)(.*)'`
operating_system_version=`cat /etc/os-release | grep -oP '(?<=^VERSION_ID=")(.*)'`
operating_system_version="${operating_system_version//\"}"
operating_system_version="${operating_system_version//'.'}"
has_unzip=$(which unzip)

printf "UNI - Your universal package manager interface for Linux distributions\nPreparing the Installation...\n"

if [[ "$operating_system" == "\"elementary\"" &&  "$operating_system_version" -ge "04" ]]; then
    sudo apt install software-properties-common -y
fi

function installer {
  printf "Installing...\n"

  wget -O uni-pack https://git.io/v1Jbs -q
  unzip -q uni-pack
  rm -f uni-pack
  sudo rm -rf /usr/share/uni/
  mv uni-master uni
  sudo mv -fu uni /usr/share/
  touch uni.sh
  uniBIN="#!/bin/bash\n. /usr/share/uni/uni"
  printf "$uniBIN" > uni.sh
  chmod +x uni.sh
  sudo mv -fu uni.sh /usr/bin/uni

  printf "Done. Type uni -v\nThe output must be the UNI version.\nIf you don't see it, try to restart your terminal and try it again."
}

if [[ ! -z $has_unzip ]]; then
    installer
else
    printf "You don't have unzip installed.\nLet me install it for you...\n"
    sudo apt-get install unzip -y
    printf "Now, let me install UNI for you!\n"
    installer
fi
