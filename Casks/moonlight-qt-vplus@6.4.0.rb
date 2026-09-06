cask "moonlight-qt-vplus@6.4.0" do
  version "6.4.0"
  sha256 "d73c3454515969c088f3b87c6d2691f8d04eb8e994288d8f29c39f6ff8855602"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.4.0/Moonlight-VPlus-6.4.0-arm64.dmg"
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
