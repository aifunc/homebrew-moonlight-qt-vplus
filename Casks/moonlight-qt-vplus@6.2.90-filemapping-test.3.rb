cask "moonlight-qt-vplus@6.2.90-filemapping-test.3" do
  version "6.2.90-filemapping-test.3"
  sha256 "903b7a31d3b36ca1b4bb7660b386797ae87dc59659bd233e7e829f42fe1d6cd3"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.90-filemapping-test.3/Moonlight-6.2.84.dmg"
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
