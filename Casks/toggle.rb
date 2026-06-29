cask "toggle" do
  version "1.0.0"
  sha256 "9d5cd724f7fbc335fca6ca8e974fa731f0e7f8007c8846688b9370c3c096c157"

  url "https://github.com/lu-zhengda/toggle/releases/download/v#{version}/Toggle.zip"
  name "Toggle"
  desc "Native macOS menu bar app for one-tap system switches"
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

  zap trash: [
    "~/Library/Preferences/com.local.toggle.plist",
  ]
end
