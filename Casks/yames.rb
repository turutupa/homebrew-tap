cask "yames" do
  version "0.9.0"

  on_arm do
    url "https://github.com/turutupa/yames/releases/download/v#{version}/Yames_#{version}_aarch64.dmg"
    sha256 "a30f0b449c446b6faadeb600756f687ea2cbd2ac52d8a8f8e477e577308be7c3"
  end

  on_intel do
    url "https://github.com/turutupa/yames/releases/download/v#{version}/Yames_#{version}_x64.dmg"
    sha256 "005128bb83d74918457f0b0cbbccd15d559e30539590e50e62cf58f838312d61"
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
