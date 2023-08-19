#!/usr/bin/sh

system=$(uname -s)

if [[ ! $(command -v zsh ) ]]
then 
	echo "Instalando zsh"
    if [[ "$system" -eq "Linux" ]] 
    then
	    sudo pacman -S zsh 
    else 
        brew install zsh
    fi
fi


if [[ ! $(command -v wget ) ]]
then 
	echo "Instalando wget"
    if [[ "$system" -eq "linux" ]]
    then 
	    sudo pacman -S wget xclip
    else 
        brew install wget xclip 
    fi
fi	



if [[ ! -d ~/.oh-my-zsh ]]
then 
	echo "oh my zsh no esta instalado, Instalando....."
	sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi

cp josephy.zsh-theme ${HOME}/.oh-my-zsh/themes


