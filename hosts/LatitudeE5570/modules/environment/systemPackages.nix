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
    neofetch
    neovim
    playerctl
    ranger
    waybar
    wofi
  ];
}
