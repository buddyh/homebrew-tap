# typed: false
# frozen_string_literal: true

class Alexa < Formula
  desc "CLI for controlling Amazon Alexa devices"
  homepage "https://github.com/buddyh/alexa-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.1.0/alexa_0.1.0_darwin_amd64.tar.gz"
      sha256 "e0c5f2e464f065ef73b57b1fe8b639e73bc8d7278dc24ec945a1071abd8b7ba6"
    end
    on_arm do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.1.0/alexa_0.1.0_darwin_arm64.tar.gz"
      sha256 "e9792c63ae51fa53a3ad4575b873d8fbb879fd66bcfafe882a8b088ded58427b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.1.0/alexa_0.1.0_linux_amd64.tar.gz"
      sha256 "49f125efe173359a24c6f75516b721942e9e99bd54f919bd2fc2cddb786494a2"
    end
    on_arm do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.1.0/alexa_0.1.0_linux_arm64.tar.gz"
      sha256 "e1e14f5aad4a6b0473e0dd13a767c73538e3da96c8594c3f6cd68fc939c828fb"
    end
  end

  def install
    bin.install "alexa"
  end

  test do
    system "#{bin}/alexa", "--help"
  end
end
