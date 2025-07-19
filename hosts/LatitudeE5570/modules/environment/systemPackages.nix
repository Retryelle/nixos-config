{ pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    alacritty
    brightnessctl
    firefox
    fzf
    hypridle
    hyprland
    hyprlock
    hyprpaper
    hyprpicker
    neofetch
    neovim
    playerctl
    ranger
    starship
    waybar
    wl-clipboard
    wofi
  ];
}
