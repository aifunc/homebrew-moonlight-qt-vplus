cask "moonlight-qt-vplus@6.5.1" do
  version "6.5.1"
  sha256 "3165f61ec302c2e9e327532e6323c088c65be89e776a5b70bb043419f9fbce8e"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.5.1/Moonlight-VPlus-6.5.1-arm64.dmg"
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
