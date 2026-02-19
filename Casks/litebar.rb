cask "litebar" do
  version "0.1.2"
  sha256 "edf3b3839e2d06e3becabfc077b6decc6a44a62b2bab74be49873a513318d8d9"

  url "https://github.com/buddyh/litebar/releases/download/v#{version}/Litebar.app.zip"
  name "Litebar"
  desc "Menu bar observability for SQLite-backed systems"
  homepage "https://github.com/buddyh/litebar"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Litebar.app"

  zap trash: "~/.litebar"
end
