{ inputs, ... }: {
  imports = [ inputs.nix-flatpak.nixosModules.nix-flatpak ];

  services.flatpak = {
    enable = true;

    remotes = [
      {
        name = "flathub";
        location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
      }
    ];

    packages = [
      { appId = "com.usebottles.bottles"; origin = "flathub"; }
      { appId = "org.cutwire.Drift"; origin = "flathub"; }
    ];

    update.onActivation = false;
    update.auto = {
      enable = true;
      onCalendar = "weekly";
    };

    uninstallUnmanaged = false;
  };
}
