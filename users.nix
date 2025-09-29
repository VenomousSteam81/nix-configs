{ pkgs, ... }:

{
  users = {
  groups.libvirtd.members = [ "lizzie" ];
  groups.lizzie = {};
    users.lizzie = {
      shell = pkgs.fish;
      isNormalUser = true;
      group = "lizzie";
      extraGroups = [ "wheel" "tty" "disk" "audio" "video" "usb" "input" "render" "qemu" "pipewire" "android" ];
      packages = with pkgs; [
        tree
        fish
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
        openssl unixtools.net-tools nmap
        android-tools usbutils pciutils
        legcord
        prismlauncher
        w3m
      ];
    };

    users.test = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      packages = with pkgs; [
        tree
        fish
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
