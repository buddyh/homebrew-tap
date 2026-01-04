# typed: false
# frozen_string_literal: true

class Alexacli < Formula
  desc "CLI for controlling Amazon Alexa devices"
  homepage "https://github.com/buddyh/alexa-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.2.0/alexacli_0.2.0_darwin_amd64.tar.gz"
      sha256 "99486b252aa2a5e7ee256c23e46a89f3d43192f22e404084733e46217b757f18"
    end
    on_arm do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.2.0/alexacli_0.2.0_darwin_arm64.tar.gz"
      sha256 "7b72fee72fa6b8626b03e439840552f009d1cfdb9d6007072a418fff08876338"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.2.0/alexacli_0.2.0_linux_amd64.tar.gz"
      sha256 "dbab2dbd7c83b7c58624fa94c72df2fcf775b0b1ffb18bfbe32aeb4b12c10e10"
    end
    on_arm do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.2.0/alexacli_0.2.0_linux_arm64.tar.gz"
      sha256 "32d8981db5e0faaea841ede7a38820dcca73b8d06e822103cbb2a5b7c761c403"
    end
  end

  def install
    bin.install "alexacli"
  end

  test do
    system "#{bin}/alexacli", "--help"
  end
end
