cask "moonlight-qt-vplus@6.2.70" do
  version "6.2.70"
  sha256 "e4a2da07d24965688a1a02287922d9af4f9d6497e7186dacf9a2c32f941ed51b"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.70/Moonlight-6.2.70.dmg"
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
