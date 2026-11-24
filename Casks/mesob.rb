# Homebrew cask for Mesob. scripts/release.sh renders dist/releases/<version>/homebrew/mesob.rb from this
# template with the real version and SHA-256 sums, and `scripts/release.sh --publish` pushes it to the tap
# github.com/ahadustt/homebrew-mesob as Casks/mesob.rb (the same repo hosts the release assets).
# Users: brew install --cask ahadustt/mesob/mesob
cask "mesob" do
  version "0.2.0"
  sha256 "be97312c7acb97a5cff7bd090c78f0d21733adcefe6b16ac2706b00897d2d2f4"

  url "https://github.com/ahadustt/homebrew-mesob/releases/download/v#{version}/Mesob-#{version}-arm64.dmg"
  name "Mesob"
  desc "Run Claude Code, Codex and Antigravity agents in parallel and track every AI dollar"
  homepage "https://mesob.studio/"

  livecheck do
    url "https://github.com/ahadustt/homebrew-mesob/releases/latest/download/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Mesob.app"
  binary "#{appdir}/Mesob.app/Contents/Resources/bin/mesob"

  zap trash: [
    "~/.mesob",
    "~/Library/Application Support/Mesob",
    "~/Library/Preferences/com.rosslyn.mesob.plist",
    "~/Library/Saved Application State/com.rosslyn.mesob.savedState",
  ]
end
