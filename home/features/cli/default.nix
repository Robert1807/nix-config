{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./fish.nix
    ./fzf.nix
    ./neofetch.nix
    ./starship.nix
  ];

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    withNodeJs = true;
    withPython3 = true;
  };

  programs.git = {
    enable = true;
    difftastic.enable = true;
    userName = "Robert1807";
    userEmail = "robertrivarola060@gmail.com";
    aliases = {
      st = "status";
      logd = "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit";
    };
    extraConfig = {
      core.excludesfile = "~/.gitignore_global";
      init = {
        defaultBranch = "main";
      };
      branch = {
        autosetuprebase = "always";
      };
      pull = {
        rebase = true;
      };
    };
  };

  programs.lazygit = {
    enable = true;
    settings = {
      gui.theme = {
        activeBorderColor = [
          "#ff9e64"
          "bold"
        ];
        inactiveBorderColor = ["#29a4bd"];
        searchingActiveBorderColor = [
          "#ff9e64"
          "bold"
        ];
        optionsTextColor = ["#7aa2f7"];
        selectedLineBgColor = ["#2e3c64"];
        cherryPickedCommitFgColor = ["#7aa2f7"];
        cherryPickedCommitBgColor = ["#bb9af7"];
        markedBaseCommitFgColor = ["#7aa2f7"];
        markedBaseCommitBgColor = ["#e0af68"];
        unstagedChangesColor = ["#db4b4b"];
        defaultFgColor = ["#c0caf5"];
      };
    };
  };

  programs.bat = {enable = true;};

  programs.direnv = {
    enable = true;
    nix-direnv.enable =
      true;
  };

  programs.eza = {
    enable = true;
    enableFishIntegration = true;
    enableBashIntegration = true;
    extraOptions = ["-l" "--icons" "--git" "-a"];
  };

  programs.lf = {
    enable = true;
    settings = {
      preview = true;
      drawbox = true;
      hidden = true;
      icons = true;
      theme = "Dracula";
      previewer = "bat";
    };
  };

  home.packages = with pkgs; [
    alejandra
    bc
    comma
    coreutils
    devenv
    fabric-ai
    fd
    gcc
    go
    htop
    httpie
    jq
    just
    llm
    lf
    nix-index
    procs
    progress
    ripgrep
    tldr
    trash-cli
    unimatrix
    unzip
    wttrbar
    wireguard-tools
    yazi
    zip
  ];
}
