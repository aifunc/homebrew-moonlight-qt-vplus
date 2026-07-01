cask "moonlight-qt-vplus" do
  version "6.2.90-filemapping-test.2"
  sha256 "8279fea2a08d0903e8db49ff2068272c097a395a13c9f7b87556f5be4d63dbd3"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.90-filemapping-test.2/Moonlight-6.2.84.dmg"
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
