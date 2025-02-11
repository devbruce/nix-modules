{ self, username, ... }: {
  system.defaults = {
    # dock
    dock.autohide = true;
    dock.largesize = 32;
    dock.persistent-apps = [
      "/System/Applications/Launchpad.app"
      "/Applications/Visual Studio Code.app"
      "/Applications/Warp.app"
      "/Applications/Postman.app"
      "/System/Applications/TextEdit.app"
      "/Applications/draw.io.app"
      "/Applications/Google Chrome.app"
      "/Applications/1Password.app"
    ];
    dock.persistent-others = [
      "/Users/${username}/Downloads"
    ];

    # finder
    finder.AppleShowAllExtensions = true;
    finder.AppleShowAllFiles = true;
    finder.FXPreferredViewStyle = "clmv";

    # controlcenter
    controlcenter.BatteryShowPercentage = true;
    controlcenter.Bluetooth = true;

    # menuExtraClock
    menuExtraClock.Show24Hour = false;
    menuExtraClock.ShowAMPM = true;
  };
}
