class Codefetch < Formula
  desc "A single-source of truth for scripts and config files that can be shared and run anywhere"
  homepage "https://codefetch.io"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/codefetch/cli/codefetch-2.0.0-darwin-amd64.tar.gz"
      sha256 "8c9152751d2108aa6805a57396991483d0cbd0fd2fd4e0206848f259c39ea225"
    else
      url "https://get.everything.cloud/codefetch/cli/codefetch-2.0.0-darwin-arm64.tar.gz"
      sha256 "2b1460ab921ad6f3fd236cf0b4a0c78e1a544d80daec2a4ea0f587479bd98895"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/codefetch/cli/codefetch-2.0.0-linux-amd64.tar.gz"
      sha256 "f7264e305707540af3f70ce7d94522920f6f46a19a602cbe99037c8e73d97132"
    else
      url "https://get.everything.cloud/codefetch/cli/codefetch-2.0.0-linux-arm64.tar.gz"
      sha256 "23600c9de90e9b1c04454e519af31711a74dd1c8517bd4cb7a584e466cb2d7f4"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "version"
  end
end
