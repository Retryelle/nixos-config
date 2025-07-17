{ pkgs, ... }:
{
  networking.firewall = {
    enable = true;
    package = pkgs.nftables;

    allowPing = false;
    rejectPackets = true;
    filterForward = false;
    checkReversePath = true;
    logRefusedPackets = false;
    logReversePathDrops = false;
    logRefusedConnections = true;

    allowedUDPPorts = [];
    allowedTCPPorts = [ 22 ];
  };
}
