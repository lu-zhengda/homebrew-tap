cask "toggle" do
  version "1.1.0"
  sha256 "0635d688742811c8b12b7d474559c461d6019901f08142940cf731d3ee048122"

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
