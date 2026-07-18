cask "toggle" do
  version "1.3.0"
  sha256 "eef3733258da31107956927bbfccf58f72a1ef26fbc4b0c11b0975fa7e810db2"

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
