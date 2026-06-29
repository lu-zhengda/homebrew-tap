cask "toggle" do
  version "1.0.2"
  sha256 "ac950728f066804708899bb76d33d70528a0f92e9ff55d9f891e218f0676cc62"

  url "https://github.com/lu-zhengda/toggle/releases/download/v#{version}/Toggle.zip"
  name "Toggle"
  desc "Menu bar app for one-tap system switches"
  homepage "https://github.com/lu-zhengda/toggle"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Toggle.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/Toggle.app"]
  end

  zap trash: "~/Library/Preferences/com.local.toggle.plist"
end
