# Homebrew Tap for fizzy-cli (migrated)

> [!IMPORTANT]
> Fizzy has moved to Basecamp's Homebrew tap. This tap no longer ships a formula
> and exists only to migrate existing installs to `basecamp/tap/fizzy`.

The `fizzy-cli` formula here has been replaced by the `fizzy` cask in
[`basecamp/homebrew-tap`](https://github.com/basecamp/homebrew-tap), built from
[`basecamp/fizzy-cli`](https://github.com/basecamp/fizzy-cli).

## Migrating

Run `brew update`. Homebrew reads `tap_migrations.json` from this tap and points
`fizzy-cli` at `basecamp/tap/fizzy`.

If you already have `basecamp/tap` tapped, Homebrew migrates you automatically,
then asks you to remove the old keg:

```bash
brew uninstall --formula --force fizzy-cli
```

Otherwise Homebrew prints the commands to finish the migration. Because
`basecamp/tap` is a third-party tap, Homebrew will not tap it for you without
explicit trust:

```bash
brew tap basecamp/tap
brew trust basecamp/tap/fizzy
brew install --cask basecamp/tap/fizzy
brew uninstall --formula --force fizzy-cli
```

Once migrated, you can drop this tap:

```bash
brew untap robzolkos/fizzy-cli
```

## Fresh installs

Do not use this tap. Install from Basecamp's tap:

```bash
brew install --cask basecamp/tap/fizzy
```

Other installation methods are documented in the
[fizzy-cli README](https://github.com/basecamp/fizzy-cli#readme).
