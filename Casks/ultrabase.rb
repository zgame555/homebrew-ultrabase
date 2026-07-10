# Homebrew cask for Ultrabase.
# วางไฟล์นี้ที่ repo ใหม่ zgame555/homebrew-ultrabase ใต้ Casks/ultrabase.rb
# ผู้ใช้ติดตั้งด้วย: brew install --cask zgame555/ultrabase/ultrabase
# เวลาออก release ใหม่: อัปเดต version + sha256 (shasum -a 256 <dmg>)
cask "ultrabase" do
  version "0.1.30"
  sha256 "f1861bd899ec769c69ad8c0057ef01b00dbe7ea9355597b729bb6732d483caec"

  url "https://github.com/zgame555/ultrabase/releases/download/v#{version}/Ultrabase_#{version}_aarch64.dmg"
  name "Ultrabase"
  desc "One-click local databases — 44 engines via Docker with built-in browsers"
  homepage "https://github.com/zgame555/ultrabase"

  depends_on arch: :arm64

  app "Ultrabase.app"

  zap trash: [
    "~/.ultrabase",
    "~/Library/Application Support/com.premwitakarasinhirunkul.ultrabase",
    "~/Library/Caches/com.premwitakarasinhirunkul.ultrabase",
    "~/Library/Preferences/com.premwitakarasinhirunkul.ultrabase.plist",
    "~/Library/Saved Application State/com.premwitakarasinhirunkul.ultrabase.savedState",
  ]
end
