cask "moonlight-qt-vplus@6.2.82" do
  version "6.2.82"
  sha256 "9a2eb6931e43946fc52c1079ce4fe78edce29d63c7c3308dd9ed5462a31849d4"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.82/Moonlight-6.2.82.dmg"
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
