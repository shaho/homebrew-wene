cask "wene" do
  version "0.3.44"
  sha256 "43bfd80421f6b41bf54e92d934a7b37a74d7d3ba17b96a0347b15004642e9740"

  url "https://github.com/shaho/wene/releases/download/v#{version}/wene-#{version}.dmg"
  name "Wêne"
  desc "Image viewer and slideshow app for macOS"
  homepage "https://github.com/shaho/wene"

  depends_on macos: :big_sur

  app "wene.app"

  zap trash: [
    "~/Library/Preferences/dev.shaho.wene.plist",
    "~/Library/Saved Application State/dev.shaho.wene.savedState",
  ]
end