cask "tidydisk" do
  version "2.1"
  sha256 "5635528215d32b672a5fa40d95c3819c40aacf3ad91eac229769b00028e37540"

  url "https://github.com/prateekcode/tidydisk/releases/download/v#{version}/TidyDisk-#{version}.zip"
  name "TidyDisk"
  desc "Disk cleaner for Mac developers"
  homepage "https://tidydisk.riekapps.com/"

  depends_on macos: :sonoma

  app "TidyDisk.app"

  zap trash: [
    "~/Library/LaunchAgents/com.riekapps.tidydisk.weeklyscan.plist",
    "~/Library/Preferences/com.riekapps.tidydisk.plist",
  ]
end
