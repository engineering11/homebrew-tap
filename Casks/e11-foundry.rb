cask "e11-foundry" do
  version "0.16.1"
  sha256 "3c080b77ffd9524d65ddfe86057ee2204631bf93598de9738cf3be9b22e5c761"

  url "https://github.com/engineering11/e11-foundry-release/releases/download/v#{version}/Foundry_#{version}_aarch64.dmg"
  name "Foundry"
  desc "Tools to build at AI speed and volume"
  homepage "https://foundry.engineering11.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

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
