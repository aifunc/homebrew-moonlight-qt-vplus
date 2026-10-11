cask "moonlight-qt-vplus" do
  version "6.5.0"
  sha256 "e8168a7c75f9b1ac779837c3f8a04c75897412e14e45c25d310c894d27b6fff2"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.5.0/Moonlight-VPlus-6.5.0-arm64.dmg"
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
