#!/bin/bash

skip_headers=1
while IFS="," read -r name pass
do
    if ((skip_headers))
    then
        ((skip_headers--))
    else
<<<<<<< HEAD
        useradd -m -d /home/$name -s /bin/bash $name
        echo  $name:$pass | chpasswd
=======
        useradd -m -d /home/$name -s /bin/bash -p $pass $name
>>>>>>> 2a18780 (Updated Passwds)
    fi
done < $1
