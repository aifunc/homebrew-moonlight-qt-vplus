cask "moonlight-qt-vplus@6.1.1.3DReady" do
  version "6.1.1.3DReady"
  sha256 "b01065e1f5189a940400f460df8ee2513f21a39727bf04df96eb4b9c18dbe25a"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.1.1.3DReady/Moonlight-6.1.1.212333.dmg"
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
