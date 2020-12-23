{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  environment.systemPackages = with pkgs; [
    bash
    fish
    zsh
    tree
  ];

  # Use a custom configuration.nix location.
  environment.darwinConfig = "$HOME/.config/nix/darwin/configuration.nix";

  environment.shells = with pkgs; [ bashInteractive fish zsh ];
  environment.loginShell = pkgs.zsh;
  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  # nix.package = pkgs.nix;

  programs.bash.enable = true;  
  programs.zsh.enable = true;
  programs.fish.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  system.stateVersion = 4;
}
