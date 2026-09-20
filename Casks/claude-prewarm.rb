cask "claude-prewarm" do
  version "1.0.1"
  sha256 "89847bd9a477d51b5d3acca66d4d7f2977c3a0cf2ba455b7e37142cf14bd7df1"

  url "https://github.com/Charonyuu/Claude-prewarm/releases/download/v#{version}/Claude.Prewarm.#{version}.dmg"
  name "Claude Prewarm"
  desc "Menu bar app that starts your Claude usage window before you sit down"
  homepage "https://github.com/Charonyuu/Claude-prewarm"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Claude Prewarm.app"

  zap trash: "~/Library/Preferences/com.charonyuu.ClaudePrewarm.plist"
end
