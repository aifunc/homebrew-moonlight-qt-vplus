cask "moonlight-qt-vplus" do
  version "6.4.5"
  sha256 "5448bf60aac937af8cd6671814de0c94684b238949f2984b980cd9f88f031737"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.4.5/Moonlight-VPlus-6.4.5-arm64.dmg"
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
