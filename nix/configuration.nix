{ config, pkgs, ... }:

let
  aliases = {
    ls = "${pkgs.exa}/bin/exa";
    la = "${pkgs.exa}/bin/exa -la";
    lt = "${pkgs.exa}/bin/exa --tree";
  };

in {
  environment = {
    systemPackages = with pkgs; [
      bash
      fish
      zsh

      exa
      tree
    
      git
      jq
    ];
    shells = with pkgs; [ bash zsh fish ];
    shellAliases = aliases;
    interactiveShellInit = ''
      export XDG_CONFIG_HOME="$HOME/.config"
      export XDG_CACHE_HOME="$HOME/.cache"
      export XDG_DATA_HOME="$HOME/.local/share"
    '';
  };

  fonts = {
    enableFontDir = true;
    fonts = with pkgs; [
      (nerdfonts.override { fonts = [ "FiraCode" "SourceCodePro" ]; })
    ];
  };

  imports = [
    ./modules/zsh
  ];

  # How to change default shell for current user to zsh
}

