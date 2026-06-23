cask "music" do
  version "1.3.2"
  sha256 "6f95e016fb0d357b6db4e0bc08aa41b73f90317b0fbfe296aa4f2414fca47e1d"

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
