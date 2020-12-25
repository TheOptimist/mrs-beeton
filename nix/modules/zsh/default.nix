{ config, pkgs, ... }:

let
  functions = builtins.readFile ./functions.sh;

in {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    interactiveShellInit = ''
      ${functions}
    '';
  };

}
