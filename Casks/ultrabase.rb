# Homebrew cask for Ultrabase.
# วางไฟล์นี้ที่ repo ใหม่ zgame555/homebrew-ultrabase ใต้ Casks/ultrabase.rb
# ผู้ใช้ติดตั้งด้วย: brew install --cask zgame555/ultrabase/ultrabase
# เวลาออก release ใหม่: อัปเดต version + sha256 (shasum -a 256 <dmg>)
cask "ultrabase" do
  version "0.1.28"
  sha256 "197c9597d8694422090a5215d0a3cf9c5a53da134a8f872beba9f77905ac6033"

  url "https://github.com/zgame555/ultrabase/releases/download/v#{version}/Ultrabase_#{version}_aarch64.dmg"
  name "Ultrabase"
  desc "One-click local databases — 44 engines via Docker with built-in browsers"
  homepage "https://github.com/zgame555/ultrabase"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Ultrabase.app"

  zap trash: [
    "~/.ultrabase",
    "~/Library/Application Support/com.premwitakarasinhirunkul.ultrabase",
    "~/Library/Caches/com.premwitakarasinhirunkul.ultrabase",
    "~/Library/Preferences/com.premwitakarasinhirunkul.ultrabase.plist",
    "~/Library/Saved Application State/com.premwitakarasinhirunkul.ultrabase.savedState",
  ]
end
