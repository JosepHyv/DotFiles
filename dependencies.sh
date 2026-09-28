#!/usr/bin/bash

install_qtile=false

while [[ $# -gt 0 ]]; do
    case $1 in
        --qtile)
            install_qtile=true
            shift
            ;;
        *)
            shift
            ;;
    esac
done

echo "installing main dependencies"
sudo pacman -Syu \
    ## Terminal utils
    xh \
	fd \
    zsh \
	fzf \
    tmux \
    exa \
	fnm \
	ripgrep \
    ## Development
	go \
    zed \
	pyenv \
	neovim \
	python \
    base-devel \
    opencode \
	pacman-contrib \
    ## Daily Utilities
    ufw \
    gufw \
    ufw-extras \
    languagetool \
	networkmanager \
	ttf-jetbrains-mono \
	ttf-jetbrains-mono-nerd \
	noto-fonts \
    chromium \
    librewolf

## Installing dependencies for qtile config
if [ "$install_qtile" = true ]; then
sudo pacman -Syu \
	qtile \
	picom \
	rofi \
	network-manager-applet \
	papirus-icon-theme \
	brightnessctl \
	dunst \
	blueman \
	polkit-gnome \
	light-locker \
	lightdm-webkit2-greeter \
	pavucontrol \
	alsa-utils \
	pipewire-pulse \
	ttf-nerd-fonts-symbols \
	ttf-nerd-fonts-symbols-mono
fi

# Installing tmux tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# installing yay for aur packages
echo "installing yay for aur packages"
temp=${mktemp -d}
git clone https://aur.archlinux.org/yay.git $temp

makepkg -si $temp


if [[ ! $(command -v yay) ]]; then
	echo "installing AUR packages"
	yay -S \
        blackbox-terminal \
        1password \
        fuzzy-pkg-finder
fi

# Dependencies from specific languages

if [[ ! $(command -v fnm) ]]; then
    echo "installig latest node version"
    fnm install 26
fi

if [[ ! $(command -v node) ]]; then
    echo "Setting Up Node"
    npm install -g corepack
    corepack enable pnpm
fi

# NodeJs dependencies
pnpm install -g prettier@latest eslint@latest yarn@latest pnpm@latest bun@latest

pip install black ruff  poetry
