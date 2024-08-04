{ pkgs, ... }: {
  imports = [
    ./alias.nix
    ./zoxide.nix
    ./starship.nix
    ./zsh.nix
  ];
}
