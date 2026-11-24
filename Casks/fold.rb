cask "fold" do
  version "2.1.0"
  sha256 "866f91758d1887cb94fe30cd6a196a51cb92775b16f12c130c4e43e5147651b6"

  url "https://github.com/lu-zhengda/fold/releases/download/v#{version}/Fold-#{version}.dmg"
  name "Fold"
  desc "Local clipboard history with search and pinboards"
  homepage "https://github.com/lu-zhengda/fold"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Fold.app"

  zap trash: [
    "~/Library/Application Support/Fold",
    "~/Library/Preferences/local.fold.clipboard.plist",
  ]
end
