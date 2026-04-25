cask "claude-mem-viz" do
  name "claude-mem-viz"
  desc "TUI for browsing and editing Claude Code auto-memory files"
  homepage "https://github.com/lu-zhengda/claude-mem-viz"
  version "0.1.0"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "claude-mem-viz"

  on_macos do
    on_intel do
      url "https://github.com/lu-zhengda/claude-mem-viz/releases/download/v#{version}/claude-mem-viz_#{version}_darwin_amd64.tar.gz"
      sha256 "3b0e999c08a496784c253181fbe70922c92e5d55b1aed247dba79576fd4a6de4"
    end
    on_arm do
      url "https://github.com/lu-zhengda/claude-mem-viz/releases/download/v#{version}/claude-mem-viz_#{version}_darwin_arm64.tar.gz"
      sha256 "eb209785e20399f7ab62a6163795c05e699a06066e9ab160234940f52bb1617f"
    end
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/claude-mem-viz"]
    end
  end
end
