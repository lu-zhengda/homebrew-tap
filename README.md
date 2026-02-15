# Homebrew Tap

Custom Homebrew formulae by [@lu-zhengda](https://github.com/lu-zhengda).

## Install

```sh
brew tap lu-zhengda/tap
```

## Formulae

| Formula | Description |
|---------|-------------|
| [macbroom](https://github.com/lu-zhengda/macbroom) | A lightweight macOS cleanup tool — sweep away junk files, visualize disk usage, run maintenance |
| [updater](https://github.com/lu-zhengda/updater) | macOS app update manager — check and update apps from Sparkle, Homebrew, MAS, GitHub Releases, Electron, and more |
| [macfig](https://github.com/lu-zhengda/macfig) | macOS hidden defaults manager — browse, search, and apply system preferences |
| [netwhiz](https://github.com/lu-zhengda/netwhiz) | A network diagnostics toolkit for macOS — inspect interfaces, test connectivity, scan ports |
| [whport](https://github.com/lu-zhengda/whport) | Port & process manager for macOS — see what's listening, kill by port, monitor changes |
| [lanchr](https://github.com/lu-zhengda/lanchr) | A macOS launch agent/daemon manager — inspect, manage, and troubleshoot launchd services |

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
