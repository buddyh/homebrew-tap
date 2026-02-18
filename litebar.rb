# typed: false
# frozen_string_literal: true

class Litebar < Formula
  desc "Menu bar observability for SQLite-backed systems"
  homepage "https://github.com/buddyh/litebar"
  url "https://github.com/buddyh/litebar/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "158a81c50968a07bfd0f52334543a9a0a700447c91cf7074fa94e4a2cba5d5d0"
  version "0.1.0"
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
