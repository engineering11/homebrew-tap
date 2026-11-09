# Engineering11 Homebrew tap

```sh
brew install --cask engineering11/tap/e11-foundry
```

Foundry Desktop updates itself, so `brew upgrade` skips it unless you pass `--greedy`.

On each Foundry Desktop release, bump `version` and `sha256` in `Casks/e11-foundry.rb`
to the new DMG on engineering11/e11-foundry-release.
