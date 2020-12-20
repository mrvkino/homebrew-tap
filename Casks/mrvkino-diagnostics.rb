cask "mrvkino-diagnostics" do
  version "1.4.1"
  sha256 "dac94f1e6b32224648d8d4a902acfb50e4b75a0cf295b508589858594899ef8f"

  url "https://github.com/macmade/Diagnostics/releases/download/#{version}/Diagnostics.app.zip"
  appcast "https://github.com/macmade/Diagnostics/releases.atom"
  name "Diagnostics"
  desc "Diagnostics is an application displaying the diagnostic reports from applications on macOS"
  homepage "https://github.com/macmade/Diagnostics"

  depends_on macos: ">= :catalina"

  auto_updates true

  app "Diagnostics.app"

  uninstall quit: "com.xs-labs.Diagnostics"

  zap trash: [
    "~/Library/Caches/com.xs-labs.Diagnostics",
    "~/Library/Preferences/com.apple.wifi.diagnostics.plist",
    "~/Library/Preferences/com.xs-labs.Diagnostics.plist",
    "~/Library/Saved Application State/com.xs-labs.Diagnostics.savedState",
  ]
end
