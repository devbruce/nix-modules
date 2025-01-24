{
  description = "devbruce/nix-modules";

  outputs = { ... }: {
    darwinModules = {
      configs = ./modules/configs.nix;
      fonts = ./modules/fonts.nix;
      packages = ./modules/packages.nix;
      homebrew = ./modules/homebrew.nix;
      system = ./modules/system.nix;
    };
  };
}
