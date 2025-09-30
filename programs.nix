{ pkgs, ... }:

{
  programs = {
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    fish.enable = true;
    firefox.enable = true;
    mtr.enable = true;
    thunar.enable = true;
    xfconf.enable = true;
    light.brightnessKeys.enable = true;
    obs-studio.enableVirtualCamera = true;
    steam.enable = true;
    nix-ld = {
      enable = true;
      libraries = with pkgs; [
        zlib zstd stdenv.cc.cc curl openssl attr libssh bzip2 libxml2 acl libsodium util-linux xz systemd
        glib gtk2
        xorg.libXinerama xorg.libXcursor xorg.libXrender xorg.libXScrnSaver xorg.libXi xorg.libSM xorg.libICE xorg.libXcomposite xorg.libXtst xorg.libXrandr xorg.libXext xorg.libX11 xorg.libXfixes xorg.libxcb xorg.libXdamage xorg.libxshmfence xorg.libXxf86vm xorg.libXt xorg.libXmu xorg.libXft
        libGL libva pipewire libelf
        gnome2.GConf nspr nss cups libcap SDL2 libusb1 dbus-glib ffmpeg
        gtk3 icu libnotify gsettings-desktop-schemas
        libogg libvorbis SDL SDL2_image glew110 libidn tbb
        flac freeglut libjpeg libpng libpng12 libsamplerate libmikmod libtheora libtiff pixman speex SDL_image SDL_ttf SDL_mixer SDL2_ttf SDL2_mixer libappindicator-gtk2 libdbusmenu-gtk2 libindicator-gtk2 libcaca libcanberra libgcrypt libvpx librsvg
        pango cairo atk gdk-pixbuf fontconfig freetype dbus alsa-lib expat libdrm mesa libxkbcommon
        stdenv.cc.cc.lib pkgs.gcc-unwrapped.lib
        fuse e2fsprogs fribidi librsvg ibus
      ];
    };
  };
}
