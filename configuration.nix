{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix # Hardware config
      ./boot.nix # Contains boot stuff
      ./drives.nix # Contains other partitions and drives that should be mounted
      ./users.nix # Contains user configs
      ./services.nix # Contains services
      ./programs.nix # Contains "program.enable" config
      ./networking.nix # Contains networking config
      ./misc.nix # Contains extra one-liners that were cluttering up this file
      ./packages.nix # Contains packages
    ];

  system.copySystemConfiguration = true;
  # TLDR; DO NOT CHANGE THIS VALUE
  system.stateVersion = "25.05";
}
