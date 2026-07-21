cask "yames" do
  version "1.0.4"

  on_arm do
    url "https://github.com/turutupa/yames/releases/download/v#{version}/Yames_#{version}_aarch64.dmg"
    sha256 "03274ce476088de7002908af5bdb14702b7c8e3c9438e0dcc40af8aa0339c432"
  end

  on_intel do
    url "https://github.com/turutupa/yames/releases/download/v#{version}/Yames_#{version}_x64.dmg"
    sha256 "f047d9f930c3cbdf277cbd05d95e880462c32e06fca3f559b7db4bc18adb9ff7"
  end

  name "Yames"
  desc "Yet Another Metronome Everyone Skips — musician-grade floating metronome"
  homepage "https://yames.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Yames.app"

  zap trash: [
    "~/Library/Application Support/com.yames.metronome",
    "~/Library/Caches/com.yames.metronome",
    "~/Library/Preferences/com.yames.metronome.plist",
  ]
end
