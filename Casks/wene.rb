cask "wene" do
  version "0.3.49"
  sha256 "9f9b13a390d1bf4b1e199bcda3a6fded0518832439399f2ba7c6cd0e23ce72a3"

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