cask "moonlight-qt-vplus@6.5.3" do
  version "6.5.3"
  sha256 "db5e1d037d0c687a354fd8d684582cf8dcb274be6f2593b3254860c093690afe"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.5.3/Moonlight-VPlus-6.5.3-arm64.dmg"
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
