{ pkgs, ... }:
{
  networking.networkmanager = {
    enable = true;
    package = pkgs.networkmanager;

    dns = "systemd-resolved";
    dhcp = "internal";

    wifi = {
      backend = "wpa_supplicant";
      powersave = false;
      macAddress = "random";
      scanRandMacAddress = true;
    };

    ethernet = {
      macAddress = "random";
    };
  };
}
