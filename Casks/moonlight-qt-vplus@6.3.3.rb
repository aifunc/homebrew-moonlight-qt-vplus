cask "moonlight-qt-vplus@6.3.3" do
  version "6.3.3"
  sha256 "586e04abc21c2b5c9977ebdeb8f502fd5ee5e221874ab9126168728f873d3989"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.3.3/Moonlight-6.3.3-arm64.dmg"
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
