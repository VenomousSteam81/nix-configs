{ config, lib, pkgs, ... }:

{
  time.timeZone = "America/Chicago";

  systemd.tmpfiles.rules = [ "L+ /var/lib/qemu/firmware - - - - ${pkgs.qemu}/share/qemu/firmware" ];

  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
  hardware.bluetooth.enable = true;
  nixpkgs.config.allowUnfree = true;
  xdg.portal.enable = true;
  xdg.portal.xdgOpenUsePortal = true;
  programs.virt-manager.enable = true;  
}
