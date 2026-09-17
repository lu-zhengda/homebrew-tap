cask "toggle" do
  version "1.5.0"
  sha256 "575498e01706c2ea5350700ceb27dff4e6241db65f23ad4ae8e699da85360408"

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
