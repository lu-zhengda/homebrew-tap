cask "claude-mem-viz" do
  name "claude-mem-viz"
  desc "TUI for browsing and editing Claude Code auto-memory files"
  homepage "https://github.com/lu-zhengda/claude-mem-viz"
  version "0.2.0"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "claude-mem-viz"

  on_macos do
    on_intel do
      url "https://github.com/lu-zhengda/claude-mem-viz/releases/download/v#{version}/claude-mem-viz_#{version}_darwin_amd64.tar.gz"
      sha256 "d0261b6866849ba78b3c9916a7c475a1d455e67650480d55710491739c58ac74"
    end
    on_arm do
      url "https://github.com/lu-zhengda/claude-mem-viz/releases/download/v#{version}/claude-mem-viz_#{version}_darwin_arm64.tar.gz"
      sha256 "9984409f9fd99f3214454e53d2a0537d2a52f01139608d9836e7ee47d61fbe00"
    end
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/claude-mem-viz"]
    end
  end
end
