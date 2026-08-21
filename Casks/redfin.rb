cask "redfin" do
  version "1.4"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/kodydeda4/redfin-releases/releases/download/v#{version}/Redfin.zip",
      verified: "github.com/kodydeda4/redfin-releases/"
  name "Redfin"
  desc "Jellyfin music client for macOS"
  homepage "https://github.com/kodydeda4/redfin"

  livecheck do
    url "https://kodydeda4.github.io/redfin-releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Redfin.app"
end
