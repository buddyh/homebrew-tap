# typed: false
# frozen_string_literal: true

class Litebar < Formula
  desc "Menu bar observability for SQLite-backed systems"
  homepage "https://github.com/buddyh/litebar"
  url "https://github.com/buddyh/litebar/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "80477bcc7c2ddcef3826d4cea71b539f60db1a4ff15bd4cd56ab3171ef3802cf"
  version "0.1.1"
  license "MIT"
  head "https://github.com/buddyh/litebar.git", branch: "main"

  depends_on xcode: ["15.0", :build]

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/Litebar" => "litebar"
  end

  test do
    assert_predicate bin/"litebar", :exist?
  end
end
