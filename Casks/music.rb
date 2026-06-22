cask "music" do
  version "1.0.5"
  sha256 "285e25aea0f6894c3e9655ea37fb62d52b763a37104cb3c5c86cfac1154878e8"

  url "https://github.com/kodydeda4/music-player-releases/releases/download/v#{version}/Music.zip",
      verified: "github.com/kodydeda4/music-player-releases/"
  name "Music"
  desc "One-line description of your app"
  homepage "https://kodydeda.vercel.app/music-app"

  livecheck do
    url "https://kodydeda4.github.io/music-player-releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Music.app"
end
