class Updater < Formula
  desc "macOS app update manager"
  homepage "https://github.com/lu-zhengda/updater"
  url "https://github.com/lu-zhengda/updater/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "13ab288a6ef9b11e57e0372a88b533ee2353d8cf625fb4c74b288326b032e215"
  license "MIT"

  depends_on "go" => :build
  depends_on :macos

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/updater"

    generate_completions_from_executable(bin/"updater", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/updater --version")
  end
end
