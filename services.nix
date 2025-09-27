{ config, lib, pkgs, ... }:

{
  services = {
    libinput.enable = true;
    displayManager = {
      sddm = { 
        enable = true;
        wayland.enable = true;
        settings.General.DisplayServer = "wayland";
      };
    };
    desktopManager.plasma6.enable = true;
    xserver.enable = true;
    pipewire = {
      enable = true;
      pulse.enable = true;
    };
    openssh.enable = true;
  };
}
