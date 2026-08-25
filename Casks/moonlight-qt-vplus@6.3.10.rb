cask "moonlight-qt-vplus@6.3.10" do
  version "6.3.10"
  sha256 "e04be5a4a0c21e82ac1e73014951dc5333737a40ea143c99f4bf52184d7d540e"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.3.10/Moonlight-VPlus-6.3.10-arm64.dmg"
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
