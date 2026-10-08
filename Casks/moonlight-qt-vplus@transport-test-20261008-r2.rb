cask "moonlight-qt-vplus@transport-test-20261008-r2" do
  version "transport-test-20261008-r2"
  sha256 "c88817883ba81c817fd2fa8196ec6089fca42d50017446ababa8de318d0031d1"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/transport-test-20261008-r2/Moonlight-VPlus-6.4.5-30.ge76a536b-arm64.dmg"
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
