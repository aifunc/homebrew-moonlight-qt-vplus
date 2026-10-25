cask "moonlight-qt-vplus@6.5.2" do
  version "6.5.2"
  sha256 "08d740ae9eb5b3b89e8bf58d59edd0d42cf9aefb2409864001d155910860d917"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.5.2/Moonlight-VPlus-6.5.2-arm64.dmg"
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
