cask "prewarm" do
  version "2.0.1"
  sha256 "94045e3545ad5c0f841296129300d0c937ead769a9451603b90ea01baac46136"

  url "https://github.com/Charonyuu/prewarm/releases/download/v#{version}/Prewarm.#{version}.dmg"
  name "Prewarm"
  desc "Menu bar app that starts AI coding usage windows early and shows their limits"
  homepage "https://apps.app.charonyu.cc/en/prewarm/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Prewarm.app"

  uninstall quit: "com.charonyuu.ClaudePrewarm"

  zap trash: "~/Library/Preferences/com.charonyuu.ClaudePrewarm.plist"
end
