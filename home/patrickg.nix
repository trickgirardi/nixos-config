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
    functions.fish_greeting = "fastfetch";
  };

  programs.starship.enable = true;

  programs.eza = {
    enable = true;
    enableFishIntegration = true;
    icons = "auto";
    git = true;
    extraOptions = [ "--group-directories-first" ];
  };
}
