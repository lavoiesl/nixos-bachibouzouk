{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  seb = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    openssh.authorizedKeys.keyFiles = [ ./ssh/seb.pub ];
  };
}
