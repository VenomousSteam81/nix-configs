{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Wine Packages
    wineWowPackages.staging
    winetricks

    # OBS Packages    
    obs-studio
    (pkgs.wrapOBS {
      plugins = with pkgs.obs-studio-plugins; [
        wlrobs
        obs-backgroundremoval
        obs-pipewire-audio-capture
        obs-gstreamer
        obs-vkcapture
        obs-vaapi # optional AMD hardware acceleration
      ];
    })

    # Other misc packages
    tailscale
    virtiofsd
    vlc
    nil
    python313Packages.pip
    tree
    fish
    flatpak
    python3
    git
    pipx
    audacious
    kew
    kdePackages.kpat
    btop
    htop
    wget
    xhosts
    xorg.xhost
    pulseaudio
    playerctl
    jq
    hyfetch
    zip
    unzip
    file
    multipath-tools
    gparted
    openssl
    nettools
    nmap
    android-tools
    usbutils
    pciutils
    legcord
    prismlauncher
    w3m
    umu-launcher
    mesa-demos
    libnotify
    fuse3
    fuse
    busybox
    bash-language-server
    scrcpy
    paprefs
    discord
    equibop
    zed-editor
    nixfmt-classic
    cryptsetup
    fzf
    espeak
    pavucontrol
    mc
    qpwgraph
    minicom
    ripgrep
    bubblewrap
    glibc glibc_multi
    distrobox
    audacity
    alsa-utils
    #play
    playerctl
    sox
  ];
}
