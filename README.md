# BGirginn Homebrew Tap

Homebrew Cask distribution for [ClipboardHistory](https://github.com/BGirginn/ClipboardHistory).

## Install

```sh
brew tap BGirginn/tap
brew install --cask clipboardhistory
```

ClipboardHistory requires an Apple silicon Mac running macOS 14 Sonoma or later.

The Community beta is self-signed and is not Apple-notarized. If macOS blocks the first launch, open Applications in Finder, Control-click ClipboardHistory, choose **Open**, and confirm. Do not remove quarantine with `xattr`.

## Update

```sh
brew update
brew upgrade --cask clipboardhistory
```

## Uninstall

Normal uninstall preserves clipboard history and preferences:

```sh
brew uninstall --cask clipboardhistory
```

To remove the application together with all local history and preferences:

```sh
brew uninstall --cask --zap clipboardhistory
```
