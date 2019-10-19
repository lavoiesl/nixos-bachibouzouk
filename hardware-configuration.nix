# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/profiles/qemu-guest.nix>
    ];

  boot.initrd.availableKernelModules = [ "virtio_pci" "ahci" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-label/nixos";
      fsType = "ext4";
    };

  fileSystems."/data" =
    { device = "/dev/disk/by-label/data";
      fsType = "ext4";
    };

  fileSystems."/home" =
    { device = "/data/home";
      options = [ "bind" ];
    };

  swapDevices =
    [ { device = "/dev/disk/by-label/swap"; }
    ];

  nix.maxJobs = lib.mkDefault 1;
}
