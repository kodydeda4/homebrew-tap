cask "redfin" do
  version "1.0.4"
  sha256 "bdab56874b9040c71a5faca95493c7a8d104dd23079334671c8b3c02ab0d2d15"

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
