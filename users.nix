{ config, libs, pkgs, ... }:

{
  users = {
  groups.lizzie = {};
    users.lizzie = {
      shell = pkgs.fish;
      isNormalUser = true;
      group = "lizzie";
      extraGroups = [ "wheel" "libvirtd" "qemu-libvirtd" "users" ];
      packages = with pkgs; [
        tree
        fish
        steam
        flatpak
        python3
        git
        pipx
        audacious
        kew
        kdePackages.kpat
        btop htop
        wget
        xhosts xorg.xhost pulseaudio playerctl
        jq
        hyfetch
        zip unzip file multipath-tools gparted
        openssl
        android-tools usbutils pciutils
        legcord
      ];
    };

    users.test = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      packages = with pkgs; [
        tree
        fish
        steam
        flatpak
        python3
        git
        pipx
        audacious
        kew
        kdePackages.kpat
        btop htop
        wget
        xhosts
      ];
    };
  };
}
