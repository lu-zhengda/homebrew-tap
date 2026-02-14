class Updater < Formula
  desc "macOS app update manager"
  homepage "https://github.com/lu-zhengda/updater"
  url "https://github.com/lu-zhengda/updater/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "68a1a100aed402e85a93889477c0c1b534d849edc63e51c91623e77b3e004663"
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
