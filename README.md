# get-everything-cloud / homebrew-tap

The [Homebrew](https://brew.sh) tap for [everything.cloud](https://everything.cloud) tools. It installs prebuilt binaries on macOS and Linux, for both Intel (amd64) and Apple Silicon / ARM (arm64). New tools are added here as they are released.

## Install

```sh
brew tap get-everything-cloud/tap
brew install <formula>
```

Or install a formula directly without tapping first:

```sh
brew install get-everything-cloud/tap/<formula>
```

To see everything the tap provides:

```sh
brew search get-everything-cloud/tap/
```

## Formulae

Every formula lives in [`Formula/`](Formula/), one file per tool. To see what a formula installs, its current version and its licence:

```sh
brew info get-everything-cloud/tap/<formula>
```

## Upgrade

```sh
brew update
brew upgrade <formula>
```

## Uninstall

```sh
brew uninstall <formula>
brew untap get-everything-cloud/tap
```

## Verify an install

Each formula includes a test that runs the installed binary's `version` command:

```sh
brew test <formula>
```

Binaries are downloaded from `get.everything.cloud`, and Homebrew checks each download against the SHA-256 in the formula before installing it.

## How this tap is maintained

Formulae are updated automatically by the everything.cloud release pipeline when a new version is published, so please don't open pull requests to bump versions. Issues about installing through Homebrew are welcome.

## Licence

Each formula declares the licence of the tool it installs. `brew info` shows it.
