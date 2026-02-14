class Updater < Formula
  desc "macOS app update manager"
  homepage "https://github.com/lu-zhengda/updater"
  url "https://github.com/lu-zhengda/updater/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "d2d784d2acf4b08905611abfe3f5015214b2467dd7c409755a2c9bd1f75825e2"
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
