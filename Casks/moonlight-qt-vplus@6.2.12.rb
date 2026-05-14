cask "moonlight-qt-vplus@6.2.12" do
  version "6.2.12"
  sha256 "9ac36982a14bcf00836552c71581831a48cb91cd503d28db26663ba089ab51e3"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.12/Moonlight-6.2.12.212333.dmg"
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
