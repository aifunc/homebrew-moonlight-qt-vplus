cask "moonlight-qt-vplus" do
  version "-"
  sha256 "-"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v#{version}/Moonlight-#{version}-2.g34e6c374.dmg"
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
