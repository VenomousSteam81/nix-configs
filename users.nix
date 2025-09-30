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
      packages = with pkgs; [];
    };

    users.test = {
      isNormalUser = true;
      extraGroups = [ "wheel" "tty" "disk" "audio" "video" "usb" "input" "render" "pipewire" ];
      packages = with pkgs; [];
    };
  };
}
