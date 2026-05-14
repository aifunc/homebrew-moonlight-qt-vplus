cask "moonlight-qt-vplus@6.2.79" do
  version "6.2.79"
  sha256 "654fac7f8e2c9b698565e38b88eed23dae407f132f4e546f1223173b0dae4a17"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.79/Moonlight-6.2.79.dmg"
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
