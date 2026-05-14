cask "moonlight-qt-vplus@6.2.21" do
  version "6.2.21"
  sha256 "ac34e2e8509ba4ec69a6b37ca95f7f119d09d531dda4ba3274d451013c56b734"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.21/Moonlight-6.2.21.dmg"
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
