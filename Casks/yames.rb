cask "yames" do
  version "0.5.2"

  on_arm do
    url "https://github.com/turutupa/yames/releases/download/v#{version}/Yames_#{version}_aarch64.dmg"
    sha256 "038084b214142485b96f378cae2e58ecdde2c73249d4e47667096bea330d89b6"
  end

  on_intel do
    url "https://github.com/turutupa/yames/releases/download/v#{version}/Yames_#{version}_x64.dmg"
    sha256 "49ccdd332dfca355cbc13bde654d97948c2bcb1be07f265a6c60fed0251dddff"
  end

  name "Yames"
  desc "Yet Another Metronome Everyone Skips — musician-grade floating metronome"
  homepage "https://turutupa.github.io/yames/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Yames.app"

  postflight do
    system_command "/usr/bin/xattr",
         args: ["-cr", "#{appdir}/Yames.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.yames.metronome",
    "~/Library/Caches/com.yames.metronome",
    "~/Library/Preferences/com.yames.metronome.plist",
  ]
end
