cask "music" do
  version "1.0.0"
  sha256 "282df7e0d9cf4785a63ae89e20b5a5cfe56057a22a4183c79052b35171d8d19d"

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
