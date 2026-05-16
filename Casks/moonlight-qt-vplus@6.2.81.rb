cask "moonlight-qt-vplus@6.2.81" do
  version "6.2.81"
  sha256 "6b2ba7fc695fac2dd0b52697d75d14bf31149b0986c84a9fb3eac5813f8f8bf7"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.81/Moonlight-6.2.81.dmg"
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
