cask "moonlight-qt-vplus@6.2.80" do
  version "6.2.80"
  sha256 "365d6a2271433207585e341805de59a8b3ccef7caec2b9fe323e5328437e6f44"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.80/Moonlight-6.2.80-2.g34e6c374.dmg"
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
