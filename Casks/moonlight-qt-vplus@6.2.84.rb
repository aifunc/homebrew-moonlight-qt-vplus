cask "moonlight-qt-vplus@6.2.84" do
  version "6.2.84"
  sha256 "89ab5e7cabc6fdcbdeca3154c1e55621f010d4ad7adc794d6c9c623462504a88"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.84/Moonlight-6.2.84.dmg"
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
