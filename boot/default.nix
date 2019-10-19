{
  loader = {
    grub = {
      # Use the GRUB 2 boot loader.
      enable = true;
      version = 2;
      # efiSupport = true;
      # efiInstallAsRemovable = true;
      # Define on which hard drive you want to install Grub.
      device = "nodev"; # or "nodev" for efi only
      copyKernels = true;
      fsIdentifier = "label";
      extraConfig = ''
        serial --speed=19200 --unit=0 --word=8 --parity=no --stop=1;
        terminal_input serial;
        terminal_output serial
      '';
    };

    efi.efiSysMountPoint = "/boot/efi";
    timeout = 10;
  };

  kernelParams = [ "console=ttyS0,19200n8" ];

}
