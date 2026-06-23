cask "music" do
  version "1.3.0"
  sha256 "7b91c052ed80cc8169e505285350854cb5cace31a2b29e93174cfc3e68f0247d"

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
