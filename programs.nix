{ pkgs, ... }:

{
  imports = [
    ./programs/firefox.nix # Firefox program config
  ];
  programs = {
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    fish.enable = true;
    firefox.enable = true;
    mtr.enable = true;
    thunar.enable = true;
    xfconf.enable = true;
    light.brightnessKeys.enable = true;
    obs-studio.enableVirtualCamera = true;
    steam.enable = true;
    niri.enable = true;
    nix-ld.enable = true;
  };
}
