cask "tidydisk" do
  version "1.0"
  sha256 "cbe981416e74ef76b36d406fb6e4d1d52261b6ea2549875a71bfe3f2f9892106"

  url "https://github.com/prateek-apk/tidydisk/releases/download/v#{version}/TidyDisk-#{version}.zip"
  name "TidyDisk"
  desc "Disk cleaner for Mac developers"
  homepage "https://tidydisk.riekapps.com/"

  depends_on macos: ">= :sonoma"

  app "TidyDisk.app"

  zap trash: [
    "~/Library/LaunchAgents/com.riekapps.tidydisk.weeklyscan.plist",
    "~/Library/Preferences/com.riekapps.tidydisk.plist",
  ]
end
