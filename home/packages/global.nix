{ pkgs, ... }: [
  # Downloader
  pkgs.aria

  # Developer Mode
  pkgs.gh
  pkgs.jq
  pkgs.wget
  pkgs.zola
  pkgs.gitui
  pkgs.netcat
  pkgs.direnv
  pkgs.git-lfs
  pkgs.lazygit
  pkgs.lazygit



  # Environment
  pkgs.fd
  pkgs.bat
  pkgs.btop
  pkgs.eza
  pkgs.figlet
  pkgs.gping
  pkgs.hyperfine
  pkgs.lolcat
  pkgs.fastfetch
  pkgs.onefetch
  pkgs.procs
  pkgs.ripgrep
  pkgs.tealdeer
  pkgs.zathura 
  pkgs.topgrade

  pkgs.insomnia
  pkgs.git
  pkgs.obsidian
  pkgs.postman
  pkgs.nodejs_22
  pkgs.typescript
  pkgs.vscode
  pkgs.feh
  pkgs.thunderbird-bin
  pkgs.vlc
  pkgs.neovim
  pkgs.yt-dlp
  pkgs.dmenu

  pkgs.obs-studio
  pkgs.kitty
  pkgs.mesa
  pkgs.mesa-demos
  pkgs.libglvnd
  pkgs.linuxPackages.nvidia_x11
  # Media encode & decode
  pkgs.ffmpeg
  pkgs.libheif
  (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })  # Nerdfonts override

  # GPG Signing
  pkgs.gnupg

  # language servers
  pkgs.lua-language-server
  pkgs.nil
  pkgs.vscode-langservers-extracted
  pkgs.nodePackages.typescript-language-server
  pkgs.nodePackages.pnpm
  pkgs.nodePackages.bash-language-server
  pkgs.shellcheck
  pkgs.haskell-language-server
  pkgs.dockerfile-language-server-nodejs
  pkgs.docker-compose-language-service

  #NIX
  pkgs.nil
  pkgs.nixpkgs-fmt
]
