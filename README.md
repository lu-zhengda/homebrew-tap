# homebrew-tap

[![Platform: macOS](https://img.shields.io/badge/Platform-macOS-lightgrey.svg)](https://github.com/lu-zhengda/homebrew-tap)
[![Homebrew](https://img.shields.io/badge/Homebrew-tap-orange.svg)](https://github.com/lu-zhengda/homebrew-tap)
[![Claude Code Plugin](https://img.shields.io/badge/Claude_Code-Plugin-blueviolet.svg)](https://github.com/lu-zhengda/macos-toolkit)

Homebrew tap for macOS CLI tools — system management, network diagnostics, security auditing, email, and more.

## Quick Start

```sh
brew tap lu-zhengda/tap
brew install macbroom updater macfig netwhiz lanchr macdog pstop macctl termail machealth
```

Or install individual tools:

```sh
brew install lu-zhengda/tap/<formula>
```

## Formulae

| Formula | Description |
|---------|-------------|
| [macbroom](https://github.com/lu-zhengda/macbroom) | System cleanup — sweep away junk files, visualize disk usage, run maintenance |
| [updater](https://github.com/lu-zhengda/updater) | App update manager — check and update apps from Sparkle, Homebrew, Mac App Store, GitHub |
| [macfig](https://github.com/lu-zhengda/macfig) | Hidden defaults manager — browse, search, and apply system preferences with presets |
| [netwhiz](https://github.com/lu-zhengda/netwhiz) | Network diagnostics — interfaces, WiFi, DNS, speed tests, and LAN scanning |
| [lanchr](https://github.com/lu-zhengda/lanchr) | Launch agent & daemon manager — inspect, create, and troubleshoot launchd services |
| [macdog](https://github.com/lu-zhengda/macdog) | Security & privacy suite — audit, firewall, privacy permissions, and hardening |
| [pstop](https://github.com/lu-zhengda/pstop) | Process explorer — browse, search, and manage processes with a live TUI |
| [macctl](https://github.com/lu-zhengda/macctl) | Environment controller — power, display, audio, focus modes, and presets |
| [termail](https://github.com/lu-zhengda/termail) | Terminal email client — read, compose, reply, search, and manage Gmail |
| [machealth](https://github.com/lu-zhengda/machealth) | System health checker — unified health assessment across 8 subsystems with JSON output |

## Claude Code

All tools in this tap are available as a [Claude Code plugin](https://github.com/lu-zhengda/macos-toolkit). Install the plugin to use these tools through natural language:

```sh
claude plugin add macos-toolkit@macos-toolkit
```

Then just ask Claude: "clean up my Mac", "check my WiFi", "run a health check", "check my email", etc.

## License

[MIT](LICENSE)
