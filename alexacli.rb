# typed: false
# frozen_string_literal: true

class Alexacli < Formula
  desc "CLI for controlling Amazon Alexa devices"
  homepage "https://github.com/buddyh/alexa-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.5.0/alexacli_0.5.0_darwin_amd64.tar.gz"
      sha256 "90c07fa6c26cfe18aa122998f0c286b3c816a8b5013a1d635609a69123de6242"
    end
    on_arm do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.5.0/alexacli_0.5.0_darwin_arm64.tar.gz"
      sha256 "341fa3acc8febc4f4a150b3c469123892c202b3583756ebcafee037d7118644f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.5.0/alexacli_0.5.0_linux_amd64.tar.gz"
      sha256 "d24d6e5173ab38b6cbd741a8c57a55af8ea6d828c8f4b324caaa9105e393570e"
    end
    on_arm do
      url "https://github.com/buddyh/alexa-cli/releases/download/v0.5.0/alexacli_0.5.0_linux_arm64.tar.gz"
      sha256 "ff19b9b17f8c890079494ac2887a6ce64e9daf465d07baecf75c4f2ce9a3525d"
    end
  end

  def install
    bin.install "alexacli"
  end

  test do
    system "#{bin}/alexacli", "--help"
  end
end
