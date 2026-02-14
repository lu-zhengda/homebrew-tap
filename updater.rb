class Updater < Formula
  desc "macOS app update manager — check and update apps from Sparkle, Homebrew, MAS, and GitHub"
  homepage "https://github.com/lu-zhengda/updater"
  url "https://github.com/lu-zhengda/updater/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "456e4f6078fefca2a0d975de0a5ae0b5c8b970e4dd60316fe33aff1d5f1096ec"
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
