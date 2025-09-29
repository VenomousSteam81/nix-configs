{ ... }:

{
  # Home
  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/394f9286-e366-447c-8245-ed149d3c494c";
      fsType = "btrfs";
      options = [ "subvol=home" ];
    };

  # External SDCard that is currently used for Qemu VM Images
  fileSystems."/media/extsd" =
    { device = "/dev/disk/by-uuid/17e68043-f884-410f-9d50-5647506ab877";
      fsType = "ext4";
      options = [ "nofail" ];
    };

  # BTRFS Subvolume that contains ISO Images
  fileSystems."/var/lib/libvirt/images" =
    { device = "/dev/disk/by-uuid/394f9286-e366-447c-8245-ed149d3c494c";
      fsType = "btrfs";
      options = [ "subvol=images" ];
    };
}
