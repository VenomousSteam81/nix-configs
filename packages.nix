{ config, lib, pkgs, ... }:

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
  ];
}
