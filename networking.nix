{ ... }:

{
  networking = {
    hostName = "thundertop";
    wireless.enable = true;
    # firewall.allowedTCPPorts = [ ... ];
    # firewall.allowedUDPPorts = [ ... ];
    firewall.enable = false;
    hosts = {
      "192.168.1.201" = [ "thunderbook.local" ];
      "172.124.248.27" = [ "thunderbook.public" ];
    };
    nameservers = [
      "9.9.9.9" "149.112.112.112" "2620:fe::fe" "2620:fe::9" # Quad9 DNS
      "1.1.1.1" "1.0.0.1" # Cloudflare DNS
      "8.8.8.8" "8.8.4.4" # Google DNS
    ];
  };
}
