cask "litebar" do
  version "0.1.8"
  sha256 "9732a3ea4ea914ecec43f4b60bbb3308906bf1d81168d99ba4d1b082650b6cde"

  url "https://github.com/buddyh/litebar/releases/download/v#{version}/Litebar.app.zip"
  name "Litebar"
  desc "Menu bar observability for SQLite-backed systems"
  homepage "https://github.com/buddyh/litebar"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Litebar.app"

  zap trash: "~/.litebar"
end
