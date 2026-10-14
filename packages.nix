{ pkgs, inputs, ... } : {
  environment.systemPackages = with pkgs; [
    # CORE UTILS
    neovim
    micro-full
    wget
    fastfetch
    zellij
    git
    ffmpeg
    tree
    pciutils

    # CORE APPS
    firefox
    brave
    nautilus
    onlyoffice-desktopeditors
    ghostty

    # DEV APPS
    vscode
    zed-editor
    bruno
    beekeeper-studio
    termius
    jetbrains.rider

    # GNOME APPS
    gnome-calendar
    gnome-tweaks
    gnome-calculator
    gnome-font-viewer
    gnome-disk-utility
    file-roller
    eog
    evince
    polkit_gnome

    # UTILITARY APPS
    gearlever
    devtoolbox
    resources
    qbittorrent
    flameshot
    stremio-linux-shell
    zapzap
    wpsoffice

    # SERVICES
    ente-web
    filen-desktop
    proton-vpn
    proton-pass
    protonmail-desktop
    proton-authenticator
    capacities

    # VIDEO
    celluloid
    kdePackages.kdenlive
    obs-studio
    handbrake
    parabolic
    openshot-qt

    # GRAPHICS
    krita
    gthumb
    upscayl
    switcheroo
    pinta

    # SOUND
    audacity
    easyeffects
    cavalier
    spotify
    spotdl

    # VIRTUALIZATION
    gnome-boxes
    quickemu
    quickgui
    winboat

    # THEMING
    adw-gtk3
    yaru-theme
    colloid-gtk-theme
    colloid-icon-theme
    bibata-cursors-translucent

    # GNOME THEMING
    sassc
    gtk-engine-murrine
    gnome-themes-extra

    # DEV ENV
    dotnet-sdk_10
    netcoredbg
    nodejs
    pnpm
    bun
    python3
    uv
    go
    rustc
    wrangler

    # AI TOOLS
    claude-code
    codex
    opencode
    opencode-desktop
    skills
    ctx7

    # WAYLAND TOOLS
    grim
    hyprpicker
  ];

  fonts = {
    enableDefaultPackages = true;
    fontDir.enable = true;

    packages = with pkgs; [
      font-awesome
      nerd-fonts.zed-mono
      nerd-fonts.ubuntu
      nerd-fonts.inconsolata-go
      nerd-fonts.jetbrains-mono
      nerd-fonts.caskaydia-cove
      nerd-fonts.geist-mono
    ];
  };

  nixpkgs.overlays = [ inputs.claude-code.overlays.default ];

  nixpkgs.config.permittedInsecurePackages = [
    "electron-40.10.5"
    "electron-41.10.7"
  ];
}
