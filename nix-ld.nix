{ pkgs, ... }: {
  programs.nix-ld = {
    enable = true;
    # Added on top of the module's default libraries (zlib, openssl, curl, etc.).
    libraries = with pkgs; [
      # .NET runtime and tooling (dotnet tools, Rider/VS Code debuggers)
      icu
      krb5
      libuuid

      # GUI / Electron / Chromium-based prebuilt binaries
      glib
      gtk3
      nss
      nspr
      dbus
      cups
      expat
      alsa-lib
      libdrm
      libgbm
      libGL
      libxkbcommon
      pango
      cairo
      at-spi2-atk
      fontconfig
      freetype
      libsecret
      libx11
      libxcomposite
      libxdamage
      libxext
      libxfixes
      libxrandr
      libxcb
    ];
  };
}
