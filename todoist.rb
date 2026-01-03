# typed: false
# frozen_string_literal: true

class Todoist < Formula
  desc "Todoist CLI - manage tasks from the command line"
  homepage "https://github.com/buddyh/todoist-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/buddyh/todoist-cli/releases/download/v0.1.0/todoist_0.1.0_darwin_amd64.tar.gz"
      sha256 "5aa2ba75f78ce8384302cddaa4846f20bde40fd8bf9386d4aef193e5501001e2"
    end
    on_arm do
      url "https://github.com/buddyh/todoist-cli/releases/download/v0.1.0/todoist_0.1.0_darwin_arm64.tar.gz"
      sha256 "9f7cdcf60a1b1dc3a82aa4ac9f8df8f1e397016aff34801159a48d3393234a1a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buddyh/todoist-cli/releases/download/v0.1.0/todoist_0.1.0_linux_amd64.tar.gz"
      sha256 "dda6ccfbe9f40a5b319dfc62b4fd5c073cecd52c67b1f340767277744dc02f50"
    end
    on_arm do
      url "https://github.com/buddyh/todoist-cli/releases/download/v0.1.0/todoist_0.1.0_linux_arm64.tar.gz"
      sha256 "83dc7c0efd235985016d3d60986eae3559011f08684623c460458b0ddd1409aa"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    system "#{bin}/todoist", "--version"
  end
end
