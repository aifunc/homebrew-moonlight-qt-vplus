cask "moonlight-qt-vplus@6.4.2" do
  version "6.4.2"
  sha256 "cf5555cd77ed88ef497c3d38a29eae4b6b717af91674a8e0c0526bbc24e44e64"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.4.2/Moonlight-VPlus-6.4.2-arm64.dmg"
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
