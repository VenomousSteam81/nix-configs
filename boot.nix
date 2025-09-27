{ config, libs, pkgs, ... }:

{
  boot = {
    kernelParams = [ "net.ifnames=0" "biosdevname=0" ];
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/efi";
      };
      grub = {
        device = "nodev";
        efiSupport = true;
      };
    };
    kernelPackages = pkgs.linuxPackages_latest;
    kernelModules = [ "kvm-amd" "v4l2loopback" ];
    extraModprobeConfig = ''
      options v4l2loopback exclusive_caps=1 card_label="OBS Virtual Camera"
    '';
    binfmt.emulatedSystems = [ "aarch64-linux" "aarch64_be-linux" "alpha-linux" "armv6l-linux" "armv7l-linux" "i386-linux" "i486-linux" "i586-linux" "i686-linux" "i686-windows" "loongarch64-linux" "mips-linux" "mips64-linux" "mips64-linuxabin32" "mips64el-linux" "mips64el-linuxabin32" "mipsel-linux" "powerpc-linux" "powerpc64-linux" "powerpc64le-linux" "riscv32-linux" "riscv64-linux" "s390x-linux" "sparc-linux" "sparc64-linux" "wasm32-wasi" "wasm64-wasi""aarch64-linux" "aarch64_be-linux" "alpha-linux" "armv6l-linux" "armv7l-linux" "i386-linux" "i486-linux" "i586-linux" "i686-linux" "i686-windows" "loongarch64-linux" "mips-linux" "mips64-linux" "mips64-linuxabin32" "mips64el-linux" "mips64el-linuxabin32" "mipsel-linux" "powerpc-linux" "powerpc64-linux" "powerpc64le-linux" "riscv32-linux" "riscv64-linux" "s390x-linux" "sparc-linux" "sparc64-linux" "wasm32-wasi" "wasm64-wasi" ];
  };
}
