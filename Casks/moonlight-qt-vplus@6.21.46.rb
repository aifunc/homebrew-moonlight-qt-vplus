cask "moonlight-qt-vplus@6.21.46" do
  version "6.21.46"
  sha256 "b3827d3c9a54fcbc68747dc4e483439fad43b61ff567e5c6592966071add1873"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.21.46/Moonlight-6.2.46.dmg"
  name "Moonlight Qt V+"
  desc "Modified Moonlight game streaming client (qiin2333 fork)"
  homepage "https://github.com/qiin2333/moonlight-qt"

  livecheck do
    skip "Versioned cask"
  end

  app "Moonlight.app"

  zap trash: [
    "~/Library/Application Support/Moonlight",
    "~/Library/Preferences/com.moonlight-stream.Moonlight.plist",
    "~/Library/Saved Application State/com.moonlight-stream.Moonlight.savedState"
  ]
end
