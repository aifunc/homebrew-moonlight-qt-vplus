cask "moonlight-qt-vplus" do
  version "6.3.14"
  sha256 "3bc142acf2c49a6c8c2bedaef492183945bd61eeb8d7ab5cc63db500326aefe8"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.3.14/Moonlight-VPlus-6.3.14-arm64.dmg"
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
