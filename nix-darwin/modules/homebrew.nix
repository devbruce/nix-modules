{ ... }: {
  homebrew = {
    enable = true;
    onActivation.cleanup = "zap";
    brews = [
      "tfenv"
      "helm"
      "podman"
      # =======================
      # pyenv dependencies
      # > Ref: https://github.com/pyenv/pyenv/wiki
      # =======================
      "openssl"
      "readline"
      "sqlite3"
      "xz"
      "zlib"
      "tcl-tk@8"
      # =======================
    ];
    casks = [
      "google-chrome"
      "warp"
      "raycast"
      "visual-studio-code"
      "podman-desktop"
      "postman"
      "drawio"
    ];
  };
}
