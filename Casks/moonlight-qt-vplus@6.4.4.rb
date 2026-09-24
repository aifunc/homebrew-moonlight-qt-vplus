cask "moonlight-qt-vplus@6.4.4" do
  version "6.4.4"
  sha256 "7eae33337cafe0b31d491f2edf46bf2eb897297e7dbd2ee0a4e5402914efe47e"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.4.4/Moonlight-VPlus-6.4.4-arm64.dmg"
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
