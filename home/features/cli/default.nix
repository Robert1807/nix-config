{pkgs, ...}: {
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
    lazygit
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
