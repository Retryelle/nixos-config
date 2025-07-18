{ pkgs, ... }:
{
  home.packages = with pkgs;
  [
    # Desktop programs
    imv
    libreoffice
    mpv
    steam
    telegram-desktop
    vesktop

    # Terminal programs
    bat
    curl
    docker
    git
    tree
    unzip
    wget
    zip
  ];
}
