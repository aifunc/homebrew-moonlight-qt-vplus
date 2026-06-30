cask "moonlight-qt-vplus@6.2.90-filemapping-test.2" do
  version "6.2.90-filemapping-test.2"
  sha256 "a0a00913c667c1d99cdbb543f8f098453bc5b42749b5adf4c41f3d6d51b0fbb6"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.90-filemapping-test.2/Moonlight-6.2.84.dmg"
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
