cask "yames" do
  version "1.0.2"

  on_arm do
    url "https://github.com/turutupa/yames/releases/download/v#{version}/Yames_#{version}_aarch64.dmg"
    sha256 "cbe5a5586602b99470bfc31f13dc66d83757f695e697c5b3bab12b9df14b3b7c"
  end

  on_intel do
    url "https://github.com/turutupa/yames/releases/download/v#{version}/Yames_#{version}_x64.dmg"
    sha256 "e11560c69eabaa11a71c4238d0780100b0e22564961ece6362114255726a61b2"
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
