# Homebrew Cask formula for Snowy
#
# To install locally for testing:
#   brew install --cask ./snowy.rb
#
# To submit to homebrew-cask:
#   1. Fork https://github.com/Homebrew/homebrew-cask
#   2. Add this file to Casks/s/snowy.rb
#   3. Submit a pull request
#
# For a custom tap:
#   1. Create repo: github.com/YOUR_USERNAME/homebrew-snowy
#   2. Add this file to Casks/snowy.rb
#   3. Users install with: brew tap YOUR_USERNAME/snowy && brew install --cask snowy

cask "snowy" do
  version "1.0"
  sha256 "PLACEHOLDER_SHA256_HASH"

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
