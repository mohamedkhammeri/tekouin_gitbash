#!/bin/bash
IFS=$':'
while read -r line; do
    USERNAME=($line[0])
    GROUP_ID=($line[3])
    HOME_DIRECTORY=($line[5])
    COMMAND_SHEL=($line[6])
    USER_ID_INFO=($line[4])
    PASSWORD=($line[1]) | awk -F: '{print $2}')
    echo "The user $USERNAME is part of the $GROUP_ID gang, lives in $HOME_DIRECTORY and rides $COMMAND_SHEL. USER ID's place is protected by the passcode $PASSWORD, more info about the user here: $USER_ID_INFO"
done < /etc/passwd
    