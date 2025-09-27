{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wineWowPackages.staging
    winetricks
  ];
}
