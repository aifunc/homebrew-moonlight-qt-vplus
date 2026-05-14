cask "moonlight-qt-vplus@6.2.14" do
  version "6.2.14"
  sha256 "9cca781c34ba2896e336b2e6d98c057880bfd43ddfe50d879f76aeede52dae22"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.14/Moonlight-6.2.14.dmg"
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
