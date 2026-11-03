cask "wene" do
  version "0.3.51"
  sha256 "32733427afd36531d95be1d1f95aa5d9877b456bd1b2cf471ae5d427d2e436ca"

  url "https://github.com/shaho/wene/releases/download/v#{version}/wene-#{version}.dmg"
  name "Wêne"
  desc "Image viewer and slideshow app for macOS"
  homepage "https://github.com/shaho/wene"

  depends_on macos: :big_sur

  app "wene.app"

  zap trash: [
    "~/Library/Application Scripts/dev.shaho.wene",
    "~/Library/Containers/dev.shaho.wene",
  ]
end
