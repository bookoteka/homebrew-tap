cask "bookoteka" do
  version "1.0.0"
  sha256 "b8a89fb47acc26c792dadb882390465ace33d9231718031abe970e02e006bfd9"

  url "https://github.com/bookoteka/bookoteka/releases/download/v#{version}/bookoteka_#{version}_aarch64.dmg"
  name "bookoteka"
  desc "Aplikacja do śledzenia przeczytanych książek"
  homepage "https://github.com/bookoteka/bookoteka"

  app "bookoteka.app"

  postflight do
    system_command "xattr",
                   args: ["-d", "com.apple.quarantine", "#{appdir}/Bookoteka.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.bookoteka.dev",
    "~/Library/Caches/com.bookoteka.dev",
    "~/Library/Saved Application State/com.bookoteka.dev.savedState",
  ]
end

# https://github.com/bookoteka/bookoteka/releases/download/v1.0.0/bookoteka_0.1.0_aarch64.dmg
