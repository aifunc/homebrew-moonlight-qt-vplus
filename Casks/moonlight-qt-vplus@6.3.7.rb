cask "moonlight-qt-vplus@6.3.7" do
  version "6.3.7"
  sha256 "d9697044703c619a6d3195a5d87215bcb56b0f49594e104727aeb01be8fda1bb"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.3.7/Moonlight-VPlus-6.3.7-arm64.dmg"
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
