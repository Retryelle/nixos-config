{ pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    alacritty
    brightnessctl
    firefox
    hypridle
    hyprland
    hyprlock
    hyprpaper
    hyprpicker
    imv
    mpv
    neofetch
    neovim
    playerctl
    ranger
    waybar
    wofi
  ];
}
