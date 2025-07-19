{ pkgs, ... }:
{
  home.packages = with pkgs;
  [
    # Desktop programs
    bitwarden-desktop
    imv
    mpv
    steam
    telegram-desktop
    vesktop
    zathura

    # Terminal programs
    bat
    btop
    curl
    docker
    git
    htop
    tree
    unzip
    wget
    zip
  ];
}
