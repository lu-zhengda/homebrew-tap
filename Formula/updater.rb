class Updater < Formula
  desc "macOS app update manager"
  homepage "https://github.com/lu-zhengda/updater"
  url "https://github.com/lu-zhengda/updater/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "c9c26eb4c9d85bda17c55e2b8f13021e0ad4e76a5852688217fae095f2b64db9"
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
