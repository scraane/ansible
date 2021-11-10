#!/bin/bash
set -x
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
apt update -y
apt upgrade -y
apt install python3 python3-pip gnupg2 -y
apt install git -y
pip3 install ansible
ansible --version
ansible-pull -U https://github.com/scraane/ansible.git