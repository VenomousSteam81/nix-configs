{ pkgs, ... }:

{
  time.timeZone = "America/Chicago";

  systemd.tmpfiles.rules = [ "L+ /var/lib/qemu/firmware - - - - ${pkgs.qemu}/share/qemu/firmware" ];

  hardware.bluetooth.enable = true;
  nixpkgs.config.allowUnfree = true;
  xdg.portal.enable = true;
  xdg.portal.xdgOpenUsePortal = true;
  security.polkit.enable = true;
  
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu.vhostUserPackages = with pkgs; [ virtiofsd ];
    };
    spiceUSBRedirection.enable = true;
    podman = {
      enable = true;
      dockerCompat = true;
    };
  };
}
