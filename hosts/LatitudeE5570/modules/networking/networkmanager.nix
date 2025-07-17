{ pkgs, ... }:
{
  networking.networkmanager = {
    enable = true;
    package = pkgs.networkmanager;

    dns = "systemd-resolved";
    dhcp = "internal";

    wifi = {
      backend = "iwd";
      powersave = "false";
      macAddress = "random";
      scanRandMacAddress = true;
    };

    ethernet = {
      macAddress = "random";
    };
  };
}
