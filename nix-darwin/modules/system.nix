{ ... }: {
  system.defaults = {
    # dock
    dock.autohide = true;
    dock.largesize = 32;

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
