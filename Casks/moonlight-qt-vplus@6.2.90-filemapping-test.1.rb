cask "moonlight-qt-vplus@6.2.90-filemapping-test.1" do
  version "6.2.90-filemapping-test.1"
  sha256 "b52ef62e3f9488762c18ff0821cb74e0fa3703889119472e95a8a3aa63fc741e"

  url "https://github.com/qiin2333/moonlight-qt/releases/download/v6.2.90-filemapping-test.1/Moonlight-6.2.86-3.g492344f3.dmg"
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
