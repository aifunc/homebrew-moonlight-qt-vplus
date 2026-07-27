cask "moonlight-qt-vplus@6.2.99" do
  version "6.2.99"
  sha256 "ed61f579f5566e18233cc44a8b31ac20b20b24e0ae83e5b0cde2618804159a5d"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.99/Moonlight-6.2.99.dmg"
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
