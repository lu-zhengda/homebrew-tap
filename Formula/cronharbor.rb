class Cronharbor < Formula
  desc "Native macOS menu bar app for safely managing user cron jobs"
  homepage "https://github.com/lu-zhengda/CronHarbor"
  url "https://github.com/lu-zhengda/CronHarbor/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "2e4b6d69d0c56fb2b6d1593c03ab624ff717582c5a3b93c24d2c80f057cdd18c"
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
    system "/usr/bin/codesign", "--verify", "--deep", "--strict", app
  end
end
