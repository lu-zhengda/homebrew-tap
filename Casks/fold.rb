cask "fold" do
  version "1.2.1"
  sha256 "8d17fe31e56a937f75baeb3ddc792e67bb5df4977d1b00419bb19bbdd830e2d2"

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
