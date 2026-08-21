cask "redfin" do
  version "1.0.0"
  sha256 "05c21c7bd48a995290f60988db12151bc8e49d9a113455a9fcd3a0ff2a8085eb"

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
