cask "toggle" do
  version "1.2.4"
  sha256 "a5402629a37a0ae349fda46497209b57d40a7c5283070ac69e0b38817b151fd5"

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
