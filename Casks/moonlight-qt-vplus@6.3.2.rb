cask "moonlight-qt-vplus@6.3.2" do
  version "6.3.2"
  sha256 "878ff36a0d8fd771edfabcb386068ae1588c917c1545746799880ac122cc80cd"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.3.2/Moonlight-6.3.2-arm64.dmg"
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
