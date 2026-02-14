class Updater < Formula
  desc "macOS app update manager — check and update apps from Sparkle, Homebrew, MAS, and GitHub"
  homepage "https://github.com/lu-zhengda/updater"
  url "https://github.com/lu-zhengda/updater/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "81d552790b06945206f71053dd5a81d461031ae2f561ae07cd47c876913394ab"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/updater"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/updater --version")
  end
end
