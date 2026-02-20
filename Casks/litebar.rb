cask "litebar" do
  version "0.1.6"
  sha256 "c08d8e758347a7ed6be9aa8a206656f75a57409d9994ded801eaf6908ea933bd"

  url "https://github.com/buddyh/litebar/releases/download/v#{version}/Litebar.app.zip"
  name "Litebar"
  desc "Menu bar observability for SQLite-backed systems"
  homepage "https://github.com/buddyh/litebar"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Litebar.app"

  zap trash: "~/.litebar"
end
