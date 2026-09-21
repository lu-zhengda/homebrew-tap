cask "toggle" do
  version "1.5.1"
  sha256 "d3a4f11549b0fcf28cae2875ad170889b36c88e2776c384f812d8294504b96a2"

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

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/Toggle.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.local.toggle.plist",
    "~/Library/Preferences/com.zhengdalu.toggle.plist",
  ]
end
