cask "litebar" do
  version "0.1.5"
  sha256 "db16dec06a09c45516ea36a64c2681b55a10fa4f552f8b7d7502db8deb4da0c0"

  url "https://github.com/buddyh/litebar/releases/download/v#{version}/Litebar.app.zip"
  name "Litebar"
  desc "Menu bar observability for SQLite-backed systems"
  homepage "https://github.com/buddyh/litebar"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Litebar.app"

  zap trash: "~/.litebar"
end
