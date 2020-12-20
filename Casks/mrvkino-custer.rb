cask "mrvkino-custer" do
  version "1.1.0"
  sha256 "79f10f142658781a6b0f3e703071fd720a5321c15e56264e0a9b9110fc0cd64b"

  url "https://github.com/exelban/custer/releases/download/v#{version}/Custer.dmg"
  appcast 'https://github.com/exelban/custer/releases.atom'
  name "Custer"
  desc "streaming radio in your menu bar"
  homepage "https://github.com/exelban/custer"

  depends_on macos: ">= :mojave"

  app "Custer.app"

  uninstall launchctl: "eu.exelban.custer.LaunchAtLogin"
  uninstall quit: "eu.exelban.custer"

  zap trash: [
    "~/Library/Application Scripts/eu.exelban.custer.LaunchAtLogin",
    "~/Library/Caches/eu.exelban.custer",
    "~/Library/Containers/eu.exelban.custer.LaunchAtLogin",
    "~/Library/Preferences/eu.exelban.custer.plist",
  ]
end
