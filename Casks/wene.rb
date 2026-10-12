cask "wene" do
  version "0.3.43"
  sha256 "PASTE_SHASUM_HERE"

  url "https://github.com/shaho/wene/releases/download/v#{version}/wene-#{version}.dmg"
  name "Wêne"
  desc "Image viewer and slideshow app for macOS"
  homepage "https://github.com/shaho/wene"

  depends_on macos: ">= :big_sur"

  app "wene.app"

  zap trash: [
    "~/Library/Preferences/dev.shaho.wene.plist",
    "~/Library/Saved Application State/dev.shaho.wene.savedState",
  ]

  caveats <<~EOS
    Wêne is signed ad hoc, not notarized. The first launch is refused until you
    allow it in System Settings > Privacy & Security, or install with
    --no-quarantine.
  EOS
end