cask "litebar" do
  version "0.1.11"
  sha256 "95c5b84249c8b6638cd10dd2176ce9d26b7202d39b03b9b55fc5ddae7c4c28c7"

  url "https://github.com/buddyh/litebar/releases/download/v#{version}/Litebar.app.zip"
  name "Litebar"
  desc "Menu bar observability for SQLite-backed systems"
  homepage "https://github.com/buddyh/litebar"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Litebar.app"

  zap trash: "~/.litebar"
end
