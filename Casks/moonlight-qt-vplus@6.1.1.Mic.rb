cask "moonlight-qt-vplus@6.1.1.Mic" do
  version "6.1.1.Mic"
  sha256 "d4348211a46b005d3fcc9219d27baadf5a4d44439dd3e171e20e5253436b9282"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.1.1.Mic/Moonlight-6.1.1.212333.dmg"
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
