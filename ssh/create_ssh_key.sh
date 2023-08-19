#! /usr/bin/sh
DIR=$HOME/.ssh

mail=$1
private_key_name=$2

if [ ! -d "$DIR" ];
then 
    echo 'Creating .ssh directory'
    mkdir $DIR
fi

ssh-keygen -t ed25519 -C $mail -f $DIR/$private_key_name

eval "$(ssh-agent -s)"

ssh-add $DIR/$private_key_name

