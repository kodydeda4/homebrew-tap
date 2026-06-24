cask "music" do
  version "1.3.3"
  sha256 "d5bd900bbc50ed5883042c34fe3b0da1daa97aabca1b9f9fc0c062314297280a"

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
