cask "e11-foundry" do
  version "0.15.1"
  sha256 "b6c98499708278ba69a8f6ad5f94b3b3efd8f3af6e3c51e2e84cd1f58cdc5d12"

  url "https://github.com/engineering11/e11-foundry-release/releases/download/v#{version}/Foundry_#{version}_aarch64.dmg",
      verified: "github.com/engineering11/e11-foundry-release/"
  name "Foundry"
  desc "Tools to build at AI speed and volume"
  homepage "https://foundry.engineering11.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64

  app "Foundry.app"

  uninstall launchctl: [
    "com.engineering11.foundry.host",
    "com.engineering11.foundry.local-host",
  ]

  zap trash: [
    "~/.e11-foundry-desktop",
    "~/Library/Application Support/com.engineering11.foundry",
    "~/Library/Caches/com.engineering11.foundry",
    "~/Library/LaunchAgents/com.engineering11.foundry.host.plist",
    "~/Library/LaunchAgents/com.engineering11.foundry.local-host.plist",
    "~/Library/Preferences/com.engineering11.foundry.plist",
    "~/Library/WebKit/com.engineering11.foundry",
  ]
end
