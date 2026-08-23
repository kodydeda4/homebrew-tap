cask "redfin" do
  version "1.0.0"
  sha256 "d855fe9387cfede6b3e392129212dc0223590b0e00f64356e2a318a431e39336"

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
