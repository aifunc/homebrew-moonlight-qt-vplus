cask "moonlight-qt-vplus@6.2.90" do
  version "6.2.90"
  sha256 "69adabe128c04b2403440a5112f91ba12ea6d1cbb1768ea2bb6b1d004696ea86"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.90/Moonlight-6.2.90.dmg"
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
