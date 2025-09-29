{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Wine Packages
    wineWowPackages.staging
    winetricks

    # OBS Packages    
    ( pkgs.wrapOBS {
      plugins = with pkgs.obs-studio-plugins; [
        wlrobs
        obs-backgroundremoval
        obs-pipewire-audio-capture
        obs-vaapi #optional AMD hardware acceleration
        obs-gstreamer
        obs-vkcapture
      ];
    })
    # Other misc packages
    tailscale
    bubblewrap
    virtiofsd
    vlc
    nil
    cmake cmakeCurses gnumake llvmPackages_21.libcxxClang
    python313Packages.pip
  ];
}
