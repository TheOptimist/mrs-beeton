{ config, pkgs, ... }:

let
  user_name = "george";

in {

  imports = [
    ../configuration.nix
  ];

  # Use a custom configuration.nix location.
  environment.darwinConfig = "$HOME/.config/nix/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;

  networking = {
    hostName = "${user_name}-macbookpro";
    computerName = "${user_name}-macbookpro";
    localHostName = "${user_name}-macbookpro";
  };

  # Used for backwards compatibility, please read the changelog before changing.
  system.stateVersion = 4;
}
