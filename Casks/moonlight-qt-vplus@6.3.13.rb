cask "moonlight-qt-vplus@6.3.13" do
  version "6.3.13"
  sha256 "f03aa5078d8141304ecae78cc6e77384c5135a038177e080dd2123729c238835"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.3.13/Moonlight-VPlus-6.3.13-arm64.dmg"
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
