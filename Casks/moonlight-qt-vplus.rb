cask "moonlight-qt-vplus" do
  version "6.2.81"
  sha256 "bfd9074ab4b978d183eb9b58491280496074cb3a029f69346303901199ce9d32"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.81/Moonlight-6.2.81.dmg"
  name "Moonlight Qt V+"
  desc "Modified Moonlight game streaming client (qiin2333 fork)"
  homepage "https://github.com/qiin2333/moonlight-qt"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Moonlight.app"

  zap trash: [
    "~/Library/Application Support/Moonlight",
    "~/Library/Preferences/com.moonlight-stream.Moonlight.plist",
    "~/Library/Saved Application State/com.moonlight-stream.Moonlight.savedState"
  ]
end
