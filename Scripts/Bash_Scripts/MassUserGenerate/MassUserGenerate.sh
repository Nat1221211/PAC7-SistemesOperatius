#!/bin/bash

skip_headers=1
while IFS="," read -r name pass
do
    if ((skip_headers))
    then
        ((skip_headers--))
    else
        useradd -m -d /home/$name -s /bin/bash $name
        echo  $name:$pass | chpasswd
    fi
done < $1
