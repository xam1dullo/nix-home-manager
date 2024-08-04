{ config, pkgs, lib, ... }:
let
  determinateSystems = "curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix";

  linux = {
    # Refresh
    clean = "nix store gc && nix collect-garbage -d";
  };

  default = {
    # General aliases
    down = "cd ~/Downloads";
    ".." = "cd ..";
    "...." = "cd ../..";
    "celar" = "clear";
    ":q" = "exit";
    neofetch = "fastfetch";
    ssh-hosts = "grep -P \"^Host ([^*]+)$\" $HOME/.ssh/config | sed 's/Host //'";

    # Polite motherfucker!w
    # Do you speak it?!
    please = "sudo";
    move = "mv";
    copy = "cp";
    remove = "rm";
    list = "ls";
    q = "exit";
    edit = "hx";

    # Made with Rust
    top = "btop";
    cat = "bat";
    ls = "eza";
    sl = "eza";
    ps = "procs";
    grep = "rg";
    search = "rg";
    look = "fd";
    find = "fd";
    ping = "gping";
    time = "hyperfine";
    korgi = "cargo";

    # Refresh
    refresh = "source ~/.zshrc";

    # Development
    hack = "zellij";
    t = "tmux";
    hx = "hx";
    vi = "nvim";
    vim = "vim";

    # Others (Developer)
    ports = "sudo lsof -PiTCP -sTCP:LISTEN";
    rit = "gitui";
    dotenv = "eval export $(cat .env)";
    xclip = "xclip -selection c";
    speedtest = "curl -o /dev/null cachefly.cachefly.net/100mb.test";
    dockfm = "docker ps --all --format \"NAME:   {{.Names}}\nSTATUS: {{.Status}}\nPORTS:  {{.Ports}}\n\"";

    # Updating system
    update = "nix store gc && topgrade";
    nix-shell = "nix-shell --run zsh";
    nix-develop = "nix develop -c \"$SHELL\"";
    determinate = "${determinateSystems} | sh -s -- ";
    repair = "${determinateSystems} | sh -s -- repair";
    ydl = "yt-dlp -o '%(title)s.%(ext)s' -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'";
    adl = "yt-dlp -o '%(title)s.%(ext)s' -f 'bestaudio[ext=m4a]/best' --extract-audio";

  };

  cfg = lib.mkMerge [
    linux
    default
  ];
in
{
  config = {
    programs.zsh.shellAliases = cfg;
  };
}
