{ pkgs, ... }:
{
  services.pipewire = {
    enable = true;
    package = pkgs.pipewire;

    alsa.enable = true;
    alsa.support32Bit = true;
    audio.enable = true;
    jack.enable = true;
    pulse.enable = true;
  };
}
