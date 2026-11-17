cask "moonlight-qt-vplus@6.5.6" do
  version "6.5.6"
  sha256 "98356ffa6a4c5db186e1f4a7dbd2284668b671e45e319102815fe20fd09b0e41"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.5.6/Moonlight-VPlus-6.5.6-arm64.dmg"
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
