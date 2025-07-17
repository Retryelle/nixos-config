{
  services.resolved = {
    enable = true;

    extraConfig = ''
      [Resolve]
      DNS=1.1.1.1
      FallbackDNS=1.0.0.1
      Domains=~.
      LLMNR=no
      MulticastDNS=no
      DNSSEC=yes
      Cache=yes
      ReadEtcHosts=yes
      DNSOverTLS=yes
    '';
  };
}
