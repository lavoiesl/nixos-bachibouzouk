{
  hostName = "bachibouzouk"; # Define your hostname.
  usePredictableInterfaceNames = false;
  # wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  useDHCP = false;
  interfaces.eth0.useDHCP = true;
  # interfaces.enp0s6.useDHCP = true;

  # Configure network proxy if necessary
  # proxy.default = "http://user:password@proxy:port/";
  # proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Open ports in the firewall.
  # firewall.allowedTCPPorts = [ ... ];
  # firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # firewall.enable = false;
}
