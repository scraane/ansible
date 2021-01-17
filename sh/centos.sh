#!/bin/bash
set -x
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
yum update -y
yum install python3 python3-pip git gnupg2 -y
pip3 install ansible
ansible --version
ansible-pull -U https://github.com/scraane/ansible.git