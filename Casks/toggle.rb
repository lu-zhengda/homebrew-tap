cask "toggle" do
  version "1.5.2"
  sha256 "1953463885b75c4aad11c2e5090e7d8de149c0706465e369a5fb7ac3d75626d0"

  url "https://github.com/lu-zhengda/toggle/releases/download/v#{version}/Toggle-#{version}.dmg"
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
