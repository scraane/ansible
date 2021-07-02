#!/bin/bash
set -x
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
dnf install -y epel-release
dnf update -y
dnf install -y git
dnf install -y ansible
ansible --version
ansible-pull -U https://github.com/scraane/ansible.git