{ stateVerison, user, ... }:
{
  imports = [
    ./modules
    ./packages.nix
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVerison = stateVerison;
  };
}
