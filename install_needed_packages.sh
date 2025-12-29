#!/bin/bash
#installing flatpak
echo "installing flatpak"
paru flatpak
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
paru ueberzug++
sudo pacman -S imagemagick
sudo pacman -S luarocks
sudo pacman -S w3m
sudo npm install -g live-server
paru jre
sudo pacman -S btop
sudo pacman -S tmux
sudo pacman -S lsd
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
paru neofetch
sudo pacman -S fastfetch
paru anifetch
:udo pacman -S ffmpeg

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

paru discord
sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"

sudo pacman -S vlc
paru wine
paru cargo
paru lmstudio
paru ollama
paru nautilus
paru nautilus-admin-gtk4
paru nautilus-image-converter
paru nautilus-open-any-terminal
sudo pacman -S okular
sudo pacman -S gimp
paru AppImageLauncher
paru firefox
sudo pacman -S tor
sudo pacman -S proxychains
paru prismlauncher
sudo pacman -S ncurses fftw
paru osu
paru protonup-qt
paru steam-devices
sudo pacmman -S lutris
paru ProtonUp-Qt
paru golly

paru spotify
#install spicetify
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh
spicetify update
spicetify apply

sudo pacmman -S yt-dlp
paru docker
paru docker-compose
paru obs-studio
flatpak install flathub de.z_ray.Facetracker
sudo pacman -S bitwarden

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
paru xwaylandvideobridge
paru uwsm

#installing hyprland and additional utilities
paru hyprland
paru pywal
sudo pacman -S picom
paru rofi
sudo pacman -S swww
paru alsamixer
paru waybar
paru swaync
paru hyprshot
paru hyprlock
yay -S hyrpswitch
paru rofi-calc
paru rofi-emoji
sudo pacman -S python3-pywal
sudo pacman -S bc
sudo pacman -S python
paru libc
sudo pacman -S iniparser
yay -S cava
yay -S waybar-cava fftwava
paru hyprsysteminfo
