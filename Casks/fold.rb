cask "fold" do
  version "1.2.2"
  sha256 "49865ee3084657c17e74a200b448533f95c50b36a51429867680669d35484f88"

  url "https://github.com/lu-zhengda/fold/releases/download/v#{version}/Fold-#{version}.dmg"
  name "Fold"
  desc "Local clipboard history with search and pinboards"
  homepage "https://github.com/lu-zhengda/fold"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Fold.app"

  zap trash: [
    "~/Library/Application Support/Fold",
    "~/Library/Preferences/local.fold.clipboard.plist",
  ]
end
