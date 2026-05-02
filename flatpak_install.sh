flatpak install flathub io.github.celluloid_player.Celluloid
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub org.qbittorrent.qBittorrent
flatpak install flathub com.protonvpn.www
flatpak install flathub com.rtosta.zapzap
flatpak install flathub com.github.iwalton3.jellyfin-media-player

flatpak install flathub org.vinegarhq.Sober

curl https://launcher.hytale.com/builds/release/linux/amd64/hytale-launcher-latest.flatpak --output ~/.cache/hytale-launcher-latest.flatpak
flatpak install ~/.cache/hytale-launcher-latest.flatpak
rm ~/.cache/hytale-launcher-latest.flatpak

curl https://github.com/ppy/osu/releases/latest/download/osu.AppImage --output ~/Games/osu.AppImage
sudo chmod +x ~/Games/osu.AppImage
