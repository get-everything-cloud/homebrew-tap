class Codefetch < Formula
  desc "A single-source of truth for scripts and config files that can be shared and run anywhere"
  homepage "https://codefetch.io"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/codefetch/cli/codefetch-1.0.0-darwin-amd64.tar.gz"
      sha256 "0c8b30ca46a29b73bdd527d9e25ea87e22e8a350ac9621a06bbfda94fd1c5240"
    else
      url "https://get.everything.cloud/codefetch/cli/codefetch-1.0.0-darwin-arm64.tar.gz"
      sha256 "74151bd3985dcf1ed63589a155ec761a3e158896c5e24232c94e7722bf5f88e1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/codefetch/cli/codefetch-1.0.0-linux-amd64.tar.gz"
      sha256 "8e7f72ce974590ec9b5e3628b7becee39b8a7fa6176d09c2b8bf5fc684602712"
    else
      url "https://get.everything.cloud/codefetch/cli/codefetch-1.0.0-linux-arm64.tar.gz"
      sha256 "f8b77c1ef8d2330b98209b39d7694ea0c8272de849fa778b51eae1da099796e7"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "version"
  end
end
