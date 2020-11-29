#!/bin/bash



RED="\033[1;31m"

GREEN="\033[1;32m"

NOCOLOR="\033[0m"



echo



echo -e "step 1: ${GREEN}pre-configuring packages${NOCOLOR}"

dpkg --configure -a



echo



echo -e "step 2: ${GREEN}fix and attempt to correct a system with broken dependencies${NOCOLOR}"

apt-get install -f



echo



echo -e "step 3: ${GREEN}update apt cache${NOCOLOR}"

apt-get update -y



echo



echo -e "step 4: ${GREEN}upgrade packages${NOCOLOR}"

apt-get upgrade -y



echo



echo -e "step 5: ${GREEN}distribution upgrade${NOCOLOR}"

apt-get dist-upgrade -y



echo



echo -e "step 6: ${GREEN}remove unused packages${NOCOLOR}"

apt-get --purge autoremove -y



echo



echo -e "step 7: ${GREEN}clean up${NOCOLOR}"

apt-get autoclean -y



echo
