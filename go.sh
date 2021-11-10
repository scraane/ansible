#!/bin/bash

if [ -f /etc/os-release ]; then
    source /etc/os-release
else
    exit 1
fi

case ${ID} in
    debian|ubuntu )     wget --quiet --no-cache https://raw.githubusercontent.com/scraane/ansible/master/sh/debian.sh -O /tmp/$$_nutjob.sh
                        ;;
    * )                 echo "Can\'t detect OS. Please check the /etc/os-release file.'"
                        exit 1
esac

bash /tmp/$$_nutjob.sh $@
#rm /tmp/$$_nutjob.sh