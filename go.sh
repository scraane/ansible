#!/bin/bash

if [ -f /etc/os-release ]; then
    source /etc/os-release
else
    exit 1
fi

case ${ID} in
    debian|ubuntu )     bash <(curl -s https://raw.githubusercontent.com/scraane/ansible/master/sh/debian.sh)
                        ;;
    * )                 echo "Can\'t detect OS. Please check the /etc/os-release file.'"
                        exit 1
esac
