cask "moonlight-qt-vplus@6.3.1" do
  version "6.3.1"
  sha256 "664627352dbf0e9e4ad6bd9e0eb080f1aafd3f43b7b092933fc7204b1b203502"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.3.1/Moonlight-6.3.1-arm64.dmg"
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
