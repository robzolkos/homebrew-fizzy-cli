# Homebrew Tap for fizzy-cli

This [Homebrew](https://brew.sh) tap provides the latest stable Fizzy 3.x release.

## Installation

```bash
brew install robzolkos/fizzy-cli/fizzy-cli
```

Or:

```bash
brew tap robzolkos/fizzy-cli
brew install fizzy-cli
```

## Fizzy 4 transition

> [!WARNING]
> Fizzy 4 stable will be distributed from Basecamp's Homebrew tap once it is released. Fizzy 4 release candidates are available from [GitHub Releases](https://github.com/basecamp/fizzy-cli/releases) and are not published to Homebrew.
>
> When Fizzy 4 stable is released, migrate with:
>
> ```bash
> brew uninstall robzolkos/fizzy-cli/fizzy-cli
> brew untap robzolkos/fizzy-cli
> brew install --cask basecamp/tap/fizzy
> ```

## Usage

Once installed, the `fizzy` command is available:

```bash
fizzy --help
```

## Updating

```bash
brew upgrade fizzy-cli
```
