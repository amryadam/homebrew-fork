# homebrew-fork

Homebrew tap for Tinycast Fork, a build of the [Tinycast](https://github.com/abue-ammar/tinycast) launcher with extra features.
The source and releases are at [amryadam/tinycast](https://github.com/amryadam/tinycast).

## Install

```shell
brew tap amryadam/fork
brew trust --cask amryadam/fork/tinycast-fork
brew install --cask amryadam/fork/tinycast-fork
```

Homebrew refuses to load a cask from a tap you have not trusted, so read `Casks/tinycast-fork.rb` first and then trust it as above.
The build is signed with a self-signed certificate and is not notarized, so macOS asks once on first launch.
Open System Settings, then Privacy & Security, and choose Open Anyway.

## Update and remove

```shell
brew upgrade --cask tinycast-fork
brew uninstall --cask tinycast-fork
```

It installs next to the official `tinycast` cask, with its own name and bundle id.

## Problems

Report them at [amryadam/tinycast/issues](https://github.com/amryadam/tinycast/issues).
