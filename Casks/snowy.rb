# Homebrew Cask formula for Snowy
#
# Install with:
#   brew tap simplytoast1/snowy
#   brew install --cask snowy
#
# Or install directly:
#   brew install --cask simplytoast1/snowy/snowy

cask "snowy" do
  version "1.1"
  sha256 "7d1c37f492cc1cba00896c8032c145db1a6d2d6deb20a27bd42d7a1f09956e06"

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
