{
  # Enable CUPS to print documents.
  # printing.enable = true;

  openssh = {
    enable = true;
    permitRootLogin = "no";
  };

  longview = {
    enable = true;
    apiKeyFile = "/etc/linode/longview.key";

    apacheStatusUrl = "";
    nginxStatusUrl = "";

    mysqlUser = "";
    mysqlPassword = "";
  };
}
