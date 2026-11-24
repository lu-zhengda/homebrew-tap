cask "fold" do
  version "2.0.1"
  sha256 "45cd110505fc6c310ef25a00d1093127dbb5659f7f6c2e51d49b9d7a472463c4"

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
