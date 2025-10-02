{ ... }:

{
  services = {
    libinput.enable = true;
    tailscale.enable = true;
    openssh.enable = true;
    desktopManager.plasma6.enable = true;
    xserver.enable = true;
    lvm.enable = true;
    displayManager = {
      sddm = { 
        enable = true;
        wayland.enable = true;
        settings.General.DisplayServer = "wayland";
      };
    };
    pipewire = {
      enable = true;
      pulse.enable = true;
    };
    cron = {
      enable = true;
      systemCronJobs = [
        "@daily    lizzie    bash /home/lizzie/push.sh"
      ];
    };
  };
}
