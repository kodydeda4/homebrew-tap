cask "redfin" do
  version "1.0.2"
  sha256 "6abc25dd9babba5a763ef7e0f5ace1959f976bc642e1315e9aa2e37a9511499c"

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
