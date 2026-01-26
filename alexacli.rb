# typed: false
# frozen_string_literal: true

class Alexacli < Formula
  desc "CLI for controlling Amazon Alexa devices"
  homepage "https://github.com/buddyh/alexa-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.4.0/alexacli_0.4.0_darwin_amd64.tar.gz"
      sha256 "fa4928f8cd6c011f16c014cbc4ccaf58050e70a693541032f73763c5a3659c87"
    end
    on_arm do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.4.0/alexacli_0.4.0_darwin_arm64.tar.gz"
      sha256 "c48262d2eee74459cb5acbd392497772ece5889c06d4c2fcd2505c9080c92072"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.4.0/alexacli_0.4.0_linux_amd64.tar.gz"
      sha256 "609899d88f9a843849aaa025c078a80d81198c672e9b819c478b90e165d6caac"
    end
    on_arm do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.4.0/alexacli_0.4.0_linux_arm64.tar.gz"
      sha256 "802ae392d6f07e67d5d70126222c0c70eca713be1b64072c6f0d76e9631cdd7b"
    end
  end

  def install
    bin.install "alexacli"
  end

  test do
    system "#{bin}/alexacli", "--help"
  end
end
