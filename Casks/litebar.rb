cask "litebar" do
  version "0.1.4"
  sha256 "f7b0d26db4ee1a96edac90fbc29a829b3d61a4289af2d3d20f4e822c156753a8"

  url "https://github.com/buddyh/litebar/releases/download/v#{version}/Litebar.app.zip"
  name "Litebar"
  desc "Menu bar observability for SQLite-backed systems"
  homepage "https://github.com/buddyh/litebar"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Litebar.app"

  zap trash: "~/.litebar"
end
