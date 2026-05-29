cask "moonlight-qt-vplus@6.2.83" do
  version "6.2.83"
  sha256 "b6daa7064952c25fad3413828a3e67569498e9f19d965e0ea6ca5d29c111dadc"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.83/Moonlight-6.2.83.dmg"
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
