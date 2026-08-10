cask "moonlight-qt-vplus@6.3.4" do
  version "6.3.4"
  sha256 "3642ea2c6732e118cfdb1784ae8edb811ed56d2cacda507f9f2eef477f1e37e0"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.3.4/Moonlight-6.3.4-arm64.dmg"
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
