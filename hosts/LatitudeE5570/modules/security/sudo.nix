{ pkgs, ... }:
{
  security.sudo = {
    enable = true;
    package = pkgs.sudo;

    execWheelOnly = true;
    wheelNeedsPassword = false;
  };
}
