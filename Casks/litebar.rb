cask "litebar" do
  version "0.1.3"
  sha256 "5ac3d01bd89cfb36ae1cd87319d1050201f9cd799c3569abeda91185ae0925c1"

  url "https://github.com/buddyh/litebar/releases/download/v#{version}/Litebar.app.zip"
  name "Litebar"
  desc "Menu bar observability for SQLite-backed systems"
  homepage "https://github.com/buddyh/litebar"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Litebar.app"

  zap trash: "~/.litebar"
end
