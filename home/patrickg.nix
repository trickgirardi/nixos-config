{ ... }: {
  home.stateVersion = "26.05";

  programs.git = {
    enable = true;
    settings.user = {
      name = "Patrick Girardi";
      email = "patrickgirardi@proton.me";
    };
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set -g fish_greeting
      fastfetch
    '';
  };

  programs.starship.enable = true;
}
