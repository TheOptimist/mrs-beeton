{ config, pkgs, ... }:

{
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
  };

  fonts = {
    enableFontDir = true;
    fonts = with pkgs; [
      (nerdfonts.override { fonts = [ "FiraCode" "SourceCodePro" ]; })
    ];
  };
}	

