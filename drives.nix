{ ... }:

{
  # Home
  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/394f9286-e366-447c-8245-ed149d3c494c";
      fsType = "btrfs";
      options = [ "subvol=home" ];
    };

  # BTRFS Subvolume that contains ISO Images
  fileSystems."/var/lib/libvirt/images" =
    { device = "/dev/disk/by-uuid/394f9286-e366-447c-8245-ed149d3c494c";
      fsType = "btrfs";
      options = [ "subvol=images" ];
    };
}
