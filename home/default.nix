{ config, pkgs, ... }:

{
  imports = [
    ./fzf/default.nix
    ./git/default.nix
    ./alacritty/default.nix
    ./bash/default.nix
    ./topgrade/default.nix
    ./packages/default.nix
    # ./nixpkgs/default.nix
    ./fonts/default.nix
    ./gh/default.nix
    ./gtk/default.nix
    ./mimeapps/default.nix
    ./picom/default.nix
    ./rofi/default.nix
    ./i3/default.nix
    ./tmux/default.nix
    # ./zellij/default.nix
    ./zathura/default.nix
  ];
}
