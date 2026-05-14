cask "moonlight-qt-vplus@6.2.67" do
  version "6.2.67"
  sha256 "924b7d4b653bbea97b49fe68f8388d1b2d1d79c241f2a65c8cafa3b563a29a18"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.67/Moonlight-6.2.67.dmg"
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
