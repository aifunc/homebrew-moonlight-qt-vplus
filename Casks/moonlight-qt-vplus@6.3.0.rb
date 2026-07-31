cask "moonlight-qt-vplus@6.3.0" do
  version "6.3.0"
  sha256 "f27928fea937a365d23a40dc84758fe27a43442187893c6a07037c3653d83256"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.3.0/Moonlight-6.3.0.dmg"
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
