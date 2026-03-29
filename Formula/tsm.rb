class Tsm < Formula
  desc "A CLI for Transmission BitTorrent client"
  homepage "https://github.com/lu-zhengda/tsm"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lu-zhengda/tsm/releases/download/v#{version}/tsm-aarch64-apple-darwin.tar.gz"
    else
      url "https://github.com/lu-zhengda/tsm/releases/download/v#{version}/tsm-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lu-zhengda/tsm/releases/download/v#{version}/tsm-aarch64-unknown-linux-gnu.tar.gz"
    else
      url "https://github.com/lu-zhengda/tsm/releases/download/v#{version}/tsm-x86_64-unknown-linux-gnu.tar.gz"
    end
  end

  def install
    bin.install "tsm"
  end

  test do
    assert_match "tsm", shell_output("#{bin}/tsm --version")
  end
end
