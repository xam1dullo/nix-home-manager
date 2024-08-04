{ config, pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "Khamidullo Khudoyberdiyev";  # Replace with your name
    userEmail = "khkhamidullo@gmail.com";  # Replace with your email



    signing = {
      signByDefault = true;
      key = "6A6C3301F060C3EF825104EC2EDDC362E27071D1";
    };

    aliases = {
        co ="commit";
        br ="branch";
        ci ="commit";
        st ="status";
        lg ="log --oneline --graph --decorate";
    };


    ignores = [
      "node_modules"
      ".env"
      ".idea"
    ];
    lfs = {
          enable = true;
    };

   extraConfig = {
      url = {
        "git@github.com:" = {
          insteadOf = "https://github.com";
        };
      };

      github.user = "Khamidullo@gmail.com";

      init = {
        defaultBranch = "main";
      };

      push = {
        default = "simple";
      };

      diff = {
        algorithm = "histogram";
      };

      pull = {
        rebase = true;
      };

      diff = {
        colorMoved = "default";
      };

      difftool = {
        prompt = false;
      };

      "difftool \"nvim\"" = {
        cmd = "nvim -d $BASE $LOCAL $REMOTE $MERGED -c '$wincmd w' -c 'wincmd J'";
      };

      merge = {
        conflictStyle = "diff3";
      };

      "mergetool \"nvim-merge\"" = {
        cmd = "nvim -d $BASE $LOCAL $REMOTE $MERGED -c '$wincmd w' -c 'wincmd J'";
      };

      mergetool = {
        prompt = true;
      };

      core = {
        editor = "nvim";
        ignorecase = false;
      };
    };
  };
}

