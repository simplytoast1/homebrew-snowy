# Homebrew Cask formula for Snowy
#
# Install with:
#   brew tap simplytoast1/snowy
#   brew install --cask snowy
#
# Or install directly:
#   brew install --cask simplytoast1/snowy/snowy

cask "snowy" do
  version "1.2"
  sha256 "8593a31f32c6cd64ee4147ff76bec713d69cabe1f52974c3a6ee5403ba4a1ecb"

  url "https://pingie.com/snowy/Snowy.zip"
  name "Snowy"
  desc "Holiday snow and lights effects for your Mac desktop"
  homepage "https://pingie.com/snowy/"

  livecheck do
    url "https://pingie.com/snowy/updates.json"
    strategy :json do |json|
      json["latestVersion"]
    end
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Snowy.app"

  zap trash: [
    "~/Library/Preferences/com.pingie.Snowy.plist",
    "~/Library/Saved Application State/com.pingie.Snowy.savedState",
  ]
end
