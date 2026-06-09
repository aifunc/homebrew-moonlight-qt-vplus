cask "moonlight-qt-vplus@6.2.85" do
  version "6.2.85"
  sha256 "4d096cb490c0a700cba86ade50680cf84dbaacc415317733573f322016016d03"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.85/Moonlight-6.2.85.dmg"
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
