# typed: false
# frozen_string_literal: true

class Alexacli < Formula
  desc "CLI for controlling Amazon Alexa devices"
  homepage "https://github.com/buddyh/alexa-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.3.0/alexacli_0.3.0_darwin_amd64.tar.gz"
      sha256 "9ff7659c4c79d6be08a7066ea98108d00309945f79b65c13378a9500d9fd0402"
    end
    on_arm do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.3.0/alexacli_0.3.0_darwin_arm64.tar.gz"
      sha256 "e1a7acbf5a0c2c2afea555c3165e284131a679aa5e823a55839173a23cd1a5e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.3.0/alexacli_0.3.0_linux_amd64.tar.gz"
      sha256 "7f5a80209389586cfa81cb1ba5266ec27d6b4ad457ea4c9f8d0ef049fcb58e65"
    end
    on_arm do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.3.0/alexacli_0.3.0_linux_arm64.tar.gz"
      sha256 "c39aace4c47e94a4e7cdbbb0033a1a09b26e0079233e94e8ec5105bfdef3721d"
    end
  end

  def install
    bin.install "alexacli"
  end

  test do
    system "#{bin}/alexacli", "--help"
  end
end
