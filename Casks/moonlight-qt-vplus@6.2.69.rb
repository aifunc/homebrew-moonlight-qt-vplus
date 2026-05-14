cask "moonlight-qt-vplus@6.2.69" do
  version "6.2.69"
  sha256 "d9d546389294b68285d62f7658d3a5033f9ce29209724fd2905c423bb37a7eb5"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.69/Moonlight-6.2.67.dmg"
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
