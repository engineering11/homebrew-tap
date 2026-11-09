# Engineering11 Homebrew tap

```sh
brew install --cask engineering11/tap/e11-foundry
```

Foundry Desktop updates itself, so `brew upgrade` skips it unless you pass `--greedy`.

`.github/workflows/bump.yml` checks engineering11/e11-foundry-release hourly and bumps
`Casks/e11-foundry.rb` to the latest release. Run it from the Actions tab to bump sooner.
