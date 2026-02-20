cask "litebar" do
  version "0.1.9"
  sha256 "8a681de69feae39f621acda3b6ab34c3a4e67481c4d26112487fc5327aa4d7e6"

  url "https://github.com/buddyh/litebar/releases/download/v#{version}/Litebar.app.zip"
  name "Litebar"
  desc "Menu bar observability for SQLite-backed systems"
  homepage "https://github.com/buddyh/litebar"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Litebar.app"

  zap trash: "~/.litebar"
end
