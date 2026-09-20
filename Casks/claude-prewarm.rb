cask "claude-prewarm" do
  version "1.0.0"
  sha256 "ccaab7022fb68f78b11158c83c7e81dcbde72f777c778d420481e66df15aa011"

  url "https://github.com/Charonyuu/Claude-prewarm/releases/download/v#{version}/Claude.Prewarm.#{version}.dmg",
      verified: "github.com/Charonyuu/Claude-prewarm/"
  name "Claude Prewarm"
  desc "Menu bar app that starts your Claude usage window before you sit down"
  homepage "https://github.com/Charonyuu/Claude-prewarm"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Claude Prewarm.app"

  zap trash: [
    "~/Library/Preferences/com.charonyuu.ClaudePrewarm.plist",
  ]
end
