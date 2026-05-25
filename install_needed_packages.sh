#!/bin/bash
#installing flatpak
echo "installing flatpak"
paru -S flatpak
#isntalling other needed packages
echo "isntalling other packages"
sudo pacman -S pipewire-pulse
sudo pacman -S wireplumber
sudo pacman -S pavucontrol
sudo pacman -S blueZ
sudo pacman -S blueman
sudo pacman -S sed
sudo pacman -S neovim
sudo pacman -S npm
sudo pacman -S nodejs
sudo pacman -S ripgrep
sudo pacman -S lazygit
npm install tree-sitter-cli
sudo pacman -S bottom
sudo pacman -S python3
sudo pacman -S fzf
sudo pacman -S fd
sudo pacman -S jq
sudo pacman -S slurp
sudo pacman -S grim
sudo pacman -S uv
sudo pacman -S imagemagick
sudo pacman -S luarocks
sudo pacman -S w3m
sudo npm install -g live-server
sudo pacman -S jre
paru -S jdk-openjdk
sudo pacman -S btop
sudo pacman -S tmux
sudo pacman -S lsd
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
paru -S neofetch
sudo pacman -S fastfetch
paru -S anifetch
sudo pacman -S ffmpeg
sudo pacman -S ydotool
sudo pacman -S python
sudo pacman -S python-pip
sudo pacman -S nmap
sudo pacman -S direnv
sudo pacman -S layout
sudo pacman -S rsync
sudo pacman -S mactelnet-client
sudo pacman -S inetutils
sudo pacman -S cliphist
sudo pacman -S tesseract tesseract-data-eng
sudo pacman -S power-profiles-daemon
sudo pacman -S yt-dlp
sudo pacman -S swappy

#installing fonts
sudo pacman -S ttf-font-awesome
sudo pacman -S noto-fonts-emoji

sudo pacman -S ttf-jetbrains-mono-nerd
sudo pacman -S ttf-nerd-fonts-symbols
sudo pacman -S awesome-terminal-fonts otf-font-awesome ttf-font-awesome ttf-jetbrains-mono ttf-jetbrains-mono-nerd
fc-cache -f -v

sudo pacman -S code
paru -S cursor-bin
sudo pacman -S kate
sudo pacman -S man

paru -S discord
sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"

sudo pacman -S vlc
paru -S wine
paru -S cargo
paru -S ollama
paru -S nautilus
paru -S nautilus-admin-gtk4
paru -S nautilus-image-converter
paru -S nautilus-open-any-terminal
sudo pacman -S okular
sudo pacman -S gimp
paru -S firefox
paru -S tor-browser-bin
paru -S opera
sudo pacman -S krita
sudo pacman -S python-gobject gtk4

sudo pacman -S tor
sudo pacman -S torsocks
sudo pacman -S proxychains
sudo pacman -S ncurses fftw
sudo pacmman -S lutris
paru -S prismlauncher
paru -S protonup-qt
paru -S steam-devices
paru -S ProtonUp-Qt
paru -S golly

#install linux account manager
mkdir -p $HOME/Games/
cd $HOME/Games/
git clone https://github.com/evanovar/RobloxAccountManagerLinux.git
cd RobloxAccountManagerLinux
sudo pacman -S python-requests

paru -S spotify

paru -S docker
paru -S docker-compose
paru -S obs-studio
flatpak install flathub de.z_ray.Facetracker
sudo pacman -S bitwarden
sudo pacman -S wireshark-qt
sudo pacman -S wireshark-cli

#installing hyprland packages
echo "installing hyprland packages"
sudo pacman -S gtk3
sudo pacman -S qt5-wayland
sudo pacman -S qt6-wayland
sudo pacman -S xdg-desktop-portal-hyprland
sudo pacman -S xdg-desktop-portal-gtk
sudo pacman -S hyprutils
sudo pacman -S hyprgraphics
sudo pacman -S hyprland-qtutils
sudo pacman -S bc brightnessctl
sudo pacman -S hyprpolkitagent
sudo pacman -S wl-clipboard
sudo pacman -S otf-font-awesome
paru -S xwaylandvideobridge
paru -S uwsm

#installing hyprland and additional utilities
paru -S hyprland
paru -S pywal
paru -S rofi
paru -S alsamixer
paru -S waybar
paru -S swaync
paru -S hyprshot
paru -S hyprlock
paru -S hyprsysteminfo
paru -S rofi-calc
paru -S rofi-emoji
paru -S hyprswitch
sudo pacman -S python3-pywal
sudo pacman -S bc
sudo pacman -S python
sudo pacman -S picom
sudo pacman -S awww
yay -S hyrpswitch
yay -S cava
