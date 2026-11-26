cask "tidydisk" do
  version "2.0"
  sha256 "2a26aef46493c8846bd4ba537f402b7bbcba50bc7f86ac9533e6672a589d547b"

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
