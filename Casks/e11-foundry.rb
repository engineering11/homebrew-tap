cask "e11-foundry" do
  version "0.16.2"
  sha256 "050a90f199945bc0385d26a0b2cfd1d5112ee0751942bc02dd4e7c9b3e7bf65f"

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
