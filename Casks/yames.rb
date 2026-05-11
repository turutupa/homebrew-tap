cask "yames" do
  version "0.7.0"

  on_arm do
    url "https://github.com/turutupa/yames/releases/download/v#{version}/Yames_#{version}_aarch64.dmg"
    sha256 "69556421ef294e5f5c58533e9f82c4471f4d9a776eb426945a9aa8d7b8f6c785"
  end

  on_intel do
    url "https://github.com/turutupa/yames/releases/download/v#{version}/Yames_#{version}_x64.dmg"
    sha256 "e5160a15812a666da702d7ae25f35f2cbd181d928fbc3c7617da9b558975a453"
  end

  name "Yames"
  desc "Yet Another Metronome Everyone Skips — musician-grade floating metronome"
  homepage "https://turutupa.github.io/yames/"

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
