cask "wene" do
  version "0.3.55"
  sha256 "bcd653e78ac654b98c2eab4c5df5128cae69b5a957522919c6981d530f9fbb1a"

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
