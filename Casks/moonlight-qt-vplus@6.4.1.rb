cask "moonlight-qt-vplus@6.4.1" do
  version "6.4.1"
  sha256 "9ef815b757209ede6ef18fa536ea35baff5dd645184a33f6d8dd1513568d85f4"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.4.1/Moonlight-VPlus-6.4.1-arm64.dmg"
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
