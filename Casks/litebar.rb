cask "litebar" do
  version "0.1.12"
  sha256 "5ea98d54db439627917e3e9014b47351c394b59cb35a4c75a628cd7b9007e6e2"

  url "https://github.com/buddyh/litebar/releases/download/v#{version}/Litebar.app.zip"
  name "Litebar"
  desc "Menu bar observability for SQLite-backed systems"
  homepage "https://github.com/buddyh/litebar"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Litebar.app"

  zap trash: "~/.litebar"
end
