# Mesob for Homebrew

[Mesob](https://mesob.studio) runs Claude Code, Codex and Antigravity agents in parallel on your Mac, each on its own git branch, and shows what every AI account actually charged you.

This repository is the Homebrew tap **and** the download host: each [release](https://github.com/ahadustt/homebrew-mesob/releases) carries the signed, notarized DMG, the zip the in-app updater installs, and the signed update feed (`latest.json`, `latest.json.sig`).

## Install

```sh
brew install --cask ahadustt/mesob/mesob
```

Or download the newest DMG directly: <https://github.com/ahadustt/homebrew-mesob/releases/latest/download/Mesob-arm64.dmg>

Apple silicon only for now. macOS 13 Ventura or newer.

## Updates

The app checks this repository's newest release and installs updates itself (Mesob › Check for Updates…). Every update is verified twice: an Ed25519 signature in `latest.json` against the key built into the app, and Apple's notarized Developer ID signature from the same team. `brew upgrade --cask mesob` works too.

## Licence

The cask file in `Casks/` is MIT (see `LICENSE`). Mesob itself is proprietary software by Rosslyn LLC; downloading it means accepting the terms at <https://mesob.studio/terms/>.
