{ config, lib, pkgs, ... }:

{
  networking = {
    hostName = "thundertop";
    wireless.enable = true;
    # networking.firewall.allowedTCPPorts = [ ... ];
    # networking.firewall.allowedUDPPorts = [ ... ];
    firewall.enable = false;
  };
}
