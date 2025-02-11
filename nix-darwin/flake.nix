{
  description = "nix-darwin modules";

  outputs = { self }: {
    configs = ./core/configs.nix;
    fonts = ./core/fonts.nix;
    packages = ./core/packages.nix;
    homebrew = ./core/homebrew.nix;
    system = ./core/system.nix;

    # Home Manager
    home = {
      "default" = ./home/default.nix;
    };
  };
}
