{ ... }: {
  homebrew = {
    enable = true;
    onActivation.cleanup = "zap";
    brews = [
      "mas"
      "tfenv"
      "helm"
      "podman"
      # =======================
      # pyenv dependencies
      # > Ref: https://github.com/pyenv/pyenv/wiki
      # =======================
      # "openssl"  # Duplicated with rbenv dependencies
      "readline"
      "sqlite3"
      "xz"
      "zlib"
      "tcl-tk@8"
      # =======================
      # rbenv dependencies
      # > Ref: https://github.com/pyenv/pyenv/wiki
      # =======================
      # "readline"  # Duplicated with pyenv dependencies
      "openssl@3"
      "libyaml"
      "gmp"
      "autoconf"
      "ruby-build"  # rbenv plugin(Ref: https://github.com/rbenv/ruby-build)
      # =======================
      # gvm dependencies
      # > Ref: https://github.com/moovweb/gvm
      # =======================
      "mercurial"
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
      "1password"
      "jordanbaird-ice"  # Ref: https://github.com/jordanbaird/Ice
    ];
    masApps = {
      "Magnet" = 441258766;
      "ScreenBrush" = 1233965871;
      "Yoink" = 457622435;
    };
  };
}
