cask "gister" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  # NOTE: bootstrap placeholders — fill with the real hashes of the v0.1.0
  # release DMGs (see the tap README / bootstrap step). Subsequent releases
  # update these automatically via the gister repo's Bump Homebrew cask workflow.
  sha256 arm:   "0000000000000000000000000000000000000000000000000000000000000000",
         intel: "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/gethopp/gister/releases/download/v#{version}/Gister_#{version}_#{arch}.dmg"
  name "Gister"
  desc "Local-first GitHub Gist manager"
  homepage "https://github.com/gethopp/gister"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Gister.app"

  zap trash: [
    "~/Library/Application Support/com.gister.app",
    "~/Library/Caches/com.gister.app",
    "~/Library/WebKit/com.gister.app",
    "~/Library/Preferences/com.gister.app.plist",
    "~/Library/Saved Application State/com.gister.app.savedState",
  ]
end
