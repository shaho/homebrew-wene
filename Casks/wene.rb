cask "wene" do
  version "0.3.50"
  sha256 "f9276659262ffb09fd0143be9f42363d3b4b075d3dd31f6afc0df32dbad1a8a1"

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