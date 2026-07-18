class Cronharbor < Formula
  desc "Native macOS menu bar app for safely managing user cron jobs"
  homepage "https://github.com/lu-zhengda/CronHarbor"
  url "https://github.com/lu-zhengda/CronHarbor/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "f0fe0f1e3ef34f411e835d488062a0e7d6fcf4b94fa1fc09695e5f915a683a4c"
  license "MIT"

  depends_on macos: :sonoma

  def install
    system "./script/build_homebrew_bundle.sh", prefix

    (bin/"cronharbor").write <<~SH
      #!/bin/sh
      exec /usr/bin/open "#{opt_prefix}/CronHarbor.app"
    SH
    chmod 0755, bin/"cronharbor"
  end

  test do
    app = prefix/"CronHarbor.app"
    executable = app/"Contents/MacOS/CronHarbor"
    info_plist = app/"Contents/Info.plist"

    assert_predicate executable, :executable?
    assert_equal "com.luzhengda.CronHarbor",
                 shell_output("/usr/libexec/PlistBuddy -c 'Print :CFBundleIdentifier' #{info_plist}").strip
    assert_equal version.to_s,
                 shell_output("/usr/libexec/PlistBuddy -c 'Print :CFBundleShortVersionString' #{info_plist}").strip
    assert_equal "true",
                 shell_output("/usr/libexec/PlistBuddy -c 'Print :LSUIElement' #{info_plist}").strip
    system "/usr/bin/codesign", "--verify", "--deep", "--strict", app
  end
end
