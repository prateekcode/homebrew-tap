cask "tidydisk" do
  version "1.1"
  sha256 "df679e38af50512050510871c02933451adb94fda415b7a877ab660fc171d18f"

  url "https://github.com/prateekcode/tidydisk/releases/download/v#{version}/TidyDisk-#{version}.zip"
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
