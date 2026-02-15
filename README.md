# Homebrew Tap

Custom Homebrew formulae by [@lu-zhengda](https://github.com/lu-zhengda).

## Install

```sh
brew tap lu-zhengda/tap
```

## Formulae

| Formula | Description |
|---------|-------------|
| [macbroom](https://github.com/lu-zhengda/macbroom) | macOS cleanup tool — sweep away junk files, visualize disk usage, run maintenance |
| [updater](https://github.com/lu-zhengda/updater) | macOS app update manager — check and update apps from Sparkle, Homebrew, Mac App Store, and GitHub Releases |
| [macfig](https://github.com/lu-zhengda/macfig) | macOS hidden defaults manager — browse, search, and apply system preferences with presets |
| [netwhiz](https://github.com/lu-zhengda/netwhiz) | Network diagnostics toolkit for macOS — interfaces, WiFi, DNS, speed tests, and LAN scanning |
| [whport](https://github.com/lu-zhengda/whport) | Port & process manager for macOS — find listeners, kill by port, and monitor changes live |
| [lanchr](https://github.com/lu-zhengda/lanchr) | macOS launch agent & daemon manager — inspect, create, and troubleshoot launchd services |
| [bltctl](https://github.com/lu-zhengda/bltctl) | macOS Bluetooth manager — browse, connect, and manage Bluetooth devices |
| [macdog](https://github.com/lu-zhengda/macdog) | macOS security & privacy suite — audit, firewall, privacy permissions, and hardening |
| [pstop](https://github.com/lu-zhengda/pstop) | Process explorer for macOS — browse, search, and manage processes with a live TUI |

### macbroom

```sh
brew install lu-zhengda/tap/macbroom
```

See the [macbroom repo](https://github.com/lu-zhengda/macbroom) for full documentation.

### updater

```sh
brew install lu-zhengda/tap/updater
```

Scans `/Applications` for installed apps and checks for updates from multiple sources:

| Source | Detection |
|--------|-----------|
| Mac App Store | MAS receipt |
| Sparkle | Sparkle.framework + SUFeedURL |
| Homebrew | Cask/formula cross-reference |
| GitHub Releases | Config mapping or auto-detected from Electron `app-update.yml` |
| Electron | Electron Framework + generic update server (`latest-mac.yml`) |
| Setapp / JetBrains Toolbox / Adobe CC | Path and bundle ID heuristics (managed externally) |
| macOS System | `softwareupdate` |

See the [updater repo](https://github.com/lu-zhengda/updater) for full documentation.

### macfig

```sh
brew install lu-zhengda/tap/macfig
```

See the [macfig repo](https://github.com/lu-zhengda/macfig) for full documentation.

### netwhiz

```sh
brew install lu-zhengda/tap/netwhiz
```

See the [netwhiz repo](https://github.com/lu-zhengda/netwhiz) for full documentation.

### whport

```sh
brew install lu-zhengda/tap/whport
```

See the [whport repo](https://github.com/lu-zhengda/whport) for full documentation.

### lanchr

```sh
brew install lu-zhengda/tap/lanchr
```

See the [lanchr repo](https://github.com/lu-zhengda/lanchr) for full documentation.

### bltctl

```sh
brew install lu-zhengda/tap/bltctl
```

See the [bltctl repo](https://github.com/lu-zhengda/bltctl) for full documentation.

### macdog

```sh
brew install lu-zhengda/tap/macdog
```

See the [macdog repo](https://github.com/lu-zhengda/macdog) for full documentation.

### pstop

```sh
brew install lu-zhengda/tap/pstop
```

See the [pstop repo](https://github.com/lu-zhengda/pstop) for full documentation.

## Claude Code Integration

All tools in this tap are available as a [Claude Code plugin](https://github.com/lu-zhengda/macos-toolkit). Install it to use these tools through natural language in Claude Code.
