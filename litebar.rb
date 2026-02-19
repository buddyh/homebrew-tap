# typed: false
# frozen_string_literal: true

class Litebar < Formula
  desc "Menu bar observability for SQLite-backed systems"
  homepage "https://github.com/buddyh/litebar"
  url "https://github.com/buddyh/litebar/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "8d53cbe13a98d2ce35c97ba1ddeec86eac82679927bcf14697908427db6981d0"
  version "0.1.2"
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
