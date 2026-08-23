cask "moonlight-qt-vplus@6.3.9" do
  version "6.3.9"
  sha256 "c27dbb755d3cc9e6ad4e10b5464cdfcdf1678b8bdc952dbe8fbcf4314bc6aebe"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.3.9/Moonlight-VPlus-6.3.9-arm64.dmg"
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
