{ pkgs, user, ... }:
{
  users = {
    defaultUserShell = pkgs.zsh;

    ${user} = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" ];
    };
  };
}
