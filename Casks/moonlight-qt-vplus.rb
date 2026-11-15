cask "moonlight-qt-vplus" do
  version "6.5.5"
  sha256 "4c4016d781ccf2866fc87906c9b9fd152dcb48992b63c764fff1d0a8b76b826a"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.5.5/Moonlight-VPlus-6.5.5-arm64.dmg"
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
