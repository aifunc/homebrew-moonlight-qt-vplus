cask "moonlight-qt-vplus@6.5.4" do
  version "6.5.4"
  sha256 "ec0c98c0d76da9f2c121c5de7f83fff259e27f6dfe339e549ad52c03439e5b43"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.5.4/Moonlight-VPlus-6.5.4-arm64.dmg"
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
