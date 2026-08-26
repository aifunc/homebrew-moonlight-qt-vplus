cask "moonlight-qt-vplus@6.3.10.beta" do
  version "6.3.10.beta"
  sha256 "02836fb8e8f1842a4e17f1084f0dbca6d4a524b8fb57c05215bd0088fe69f473"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.3.10.beta/Moonlight-VPlus-6.2.84-arm64.dmg"
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
