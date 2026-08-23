cask "redfin" do
  version "1.0.1"
  sha256 "00292afd1125b451925d1f39552369dc23efb922478e52a4d2c8827b1bdc14ab"

  url "https://github.com/kodydeda4/redfin/releases/download/v#{version}/Redfin.zip",
      verified: "github.com/kodydeda4/redfin/"
  name "Redfin"
  desc "The native Jellyfin music player"
  homepage "https://kodydeda.vercel.app/music-app"

  livecheck do
    url "https://kodydeda4.github.io/redfin/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Redfin.app"
end
