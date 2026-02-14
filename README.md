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
