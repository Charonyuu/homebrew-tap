cask "prewarm" do
  version "2.0.0"
  sha256 "170ba4c911b1a1b0c94682c61429245c038e28c35bbd88bf230a7ab5954f1655"

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
