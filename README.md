# DasDuo Homebrew Tap

Homebrew tap for [ShuttleX](https://github.com/DasDuo/ShuttleX) — a modern SSH
launcher for the macOS menu bar (Apple Silicon).

## Install

```sh
brew install --cask dasduo/tap/shuttlex
```

That taps automatically; equivalently `brew tap dasduo/tap` first, then
`brew install --cask shuttlex`.

ShuttleX is ad-hoc signed (not notarized), so on first launch macOS Gatekeeper
blocks it. Allow it once with:

```sh
xattr -dr com.apple.quarantine "/Applications/ShuttleX.app"
```

or via System Settings → Privacy & Security → "Open Anyway".

## Update

```sh
brew upgrade --cask shuttlex
```
