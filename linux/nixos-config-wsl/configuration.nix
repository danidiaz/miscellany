# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

# NixOS-WSL specific options are documented on the NixOS-WSL repository:
# https://github.com/nix-community/NixOS-WSL

{ config, lib, pkgs, ... }:

{
  # # moved this to the flake, inside nixos-wsl.nixosModules.default
  # imports = [
  #   # include NixOS-WSL modules
  #   <nixos-wsl/modules>
  # ];

  # https://nixos-and-flakes.thiscute.world/nixos-with-flakes/nixos-with-flakes-enabled
  # Enable the Flakes feature and the accompanying new nix command-line tool
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  environment.systemPackages = [
    # Flakes clones its dependencies through the git command,
    # so git must be installed first
    pkgs.git
    pkgs.vim
    pkgs.neovim
    pkgs.wget
    pkgs.curl
    pkgs.tmux
    pkgs.jq 
    pkgs.awscli2
  ];
  # Set the default editor to vim
  environment.variables.EDITOR = "vim";

  # # moved this to the flake
  # wsl.enable = true;
  # wsl.defaultUser = "nixos";
  

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It's perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}
