cask "moonlight-qt-vplus@6.2.86" do
  version "6.2.86"
  sha256 "af28ce886048f437cc38f3adc949e6847a5a9fc03079931c6a87fbb1f6bce802"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.86/Moonlight-6.2.86.dmg"
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
