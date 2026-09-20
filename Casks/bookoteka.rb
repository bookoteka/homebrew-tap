cask "bookoteka" do
  version "1.0.0"
  sha256 "e9c706402b96153f3c055fb8b544941461657ac6c67bad80cd63c83b1aefad2a"

  url "https://github.com/bookoteka/bookoteka/releases/download/v#{version}/bookoteka_#{version}_aarch64.dmg"
  name "bookoteka"
  desc "Aplikacja do śledzenia przeczytanych książek"
  homepage "https://github.com/bookoteka/bookoteka"

  app "bookoteka.app"

  zap trash: [
    "~/Library/Application Support/com.bookoteka.dev",
    "~/Library/Caches/com.bookoteka.dev",
    "~/Library/Saved Application State/com.bookoteka.dev.savedState",
  ]
end

# https://github.com/bookoteka/bookoteka/releases/download/v1.0.0/bookoteka_0.1.0_aarch64.dmg
