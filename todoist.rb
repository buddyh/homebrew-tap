# typed: false
# frozen_string_literal: true

class Todoist < Formula
  desc "Todoist CLI - manage tasks from the command line"
  homepage "https://github.com/buddyh/todoist-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/buddyh/todoist-cli/releases/download/v0.2.0/todoist_0.2.0_darwin_amd64.tar.gz"
      sha256 "55557edc3505a7ad4c1cc515fcde4bdeb45f38352e480d0f312e701db3077804"
    end
    on_arm do
      url "https://github.com/buddyh/todoist-cli/releases/download/v0.2.0/todoist_0.2.0_darwin_arm64.tar.gz"
      sha256 "13db35bfe632244a4a0530936813cafa313b6793ea19081753dcfb96048ab92d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/buddyh/todoist-cli/releases/download/v0.2.0/todoist_0.2.0_linux_amd64.tar.gz"
      sha256 "37f89254908d7b926d6b5d5610d68b88a36676d17adad54f27364dee3c945a91"
    end
    on_arm do
      url "https://github.com/buddyh/todoist-cli/releases/download/v0.2.0/todoist_0.2.0_linux_arm64.tar.gz"
      sha256 "483478b80ec8cf3a29515695296dc35cfaae42e62f32285d2e0eda5d0e68ccaa"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    system "#{bin}/todoist", "--version"
  end
end
