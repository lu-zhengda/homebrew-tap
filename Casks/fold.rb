cask "fold" do
  version "1.1.0"
  sha256 "37cc6f5b4cca9f9daa3d6250e2e20ac19a2fb61b45145d6ec0b91e32947f05b8"

  url "https://github.com/lu-zhengda/fold/releases/download/v#{version}/Fold-#{version}.dmg"
  name "Fold"
  desc "Local clipboard history with search and pinboards"
  homepage "https://github.com/lu-zhengda/fold"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Fold.app"

  zap trash: [
    "~/Library/Application Support/Fold",
    "~/Library/Preferences/local.fold.clipboard.plist",
  ]
end
