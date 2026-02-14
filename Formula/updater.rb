class Updater < Formula
  desc "macOS app update manager"
  homepage "https://github.com/lu-zhengda/updater"
  url "https://github.com/lu-zhengda/updater/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "12b7f29c63cc401bb1cdee74405c19ec1dbad73d993d1760fee29493101a598f"
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
