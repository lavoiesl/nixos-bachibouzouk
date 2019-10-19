{ pkgs, ... }:

# List packages installed in system profile. To search, run:
# $ nix search wget
with pkgs;

[
  curl
  git
  htop
  inetutils
  mtr
  sysstat
  vim
  wget
]
