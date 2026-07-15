cask "moonlight-qt-vplus@6.2.92" do
  version "6.2.92"
  sha256 "fc411828409120838b9b10322a64b4f0955c87ff089c3357d43b858185f7d170"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.92/Moonlight-6.2.92.dmg"
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
