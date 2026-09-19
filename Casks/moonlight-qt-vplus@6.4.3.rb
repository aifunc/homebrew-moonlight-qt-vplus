cask "moonlight-qt-vplus@6.4.3" do
  version "6.4.3"
  sha256 "710293b90076f9d985bcc5efe3da4464cf76a6486fc7e7ab093bd99c67ce838d"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.4.3/Moonlight-VPlus-6.4.3-arm64.dmg"
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
