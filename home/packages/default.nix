{ config
, pkgs
, lib
, ...
}:
let
  # Package sets for different targets
  linux = import ./linux.nix { inherit pkgs; };
  globals = import ./global.nix { inherit pkgs; };

in
{

  config = {
    # Packages to be installed on my machine
    home.packages =
       globals ++ linux;
  };
}
