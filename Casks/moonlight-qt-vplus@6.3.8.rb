cask "moonlight-qt-vplus@6.3.8" do
  version "6.3.8"
  sha256 "4607609ea58b8a758ba0a498bc0805f1b5c415843e2dea048bcff73f48e7ca94"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.3.8/Moonlight-VPlus-6.3.8-arm64.dmg"
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
