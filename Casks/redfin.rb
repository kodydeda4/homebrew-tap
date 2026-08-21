cask "redfin" do
  version "1.0.3"
  sha256 "58b308f59aeac42fba10a599934b76b1132da5ac0dbbf2dbb2ded7ff3e892c69"

  url "https://github.com/kodydeda4/redfin-releases/releases/download/v#{version}/Redfin.zip",
      verified: "github.com/kodydeda4/redfin-releases/"
  name "Redfin"
  desc "An open source Jellyfin music player"
  homepage "https://kodydeda.vercel.app/music-app"

  livecheck do
    url "https://kodydeda4.github.io/redfin-releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Redfin.app"
end
