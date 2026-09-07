class Codefetch < Formula
  desc "A single-source of truth for scripts and config files that can be shared and run anywhere"
  homepage "https://codefetch.io"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/codefetch/cli/codefetch-1.0.0-darwin-amd64.tar.gz"
      sha256 "f421931f5241b4f0648ecb548fce695d42c56e2cbb3768e3ed7094d560782fba"
    else
      url "https://get.everything.cloud/codefetch/cli/codefetch-1.0.0-darwin-arm64.tar.gz"
      sha256 "ad2ecafd976f9f4a276c83322b57f0dd0bd8f5952a92ad21999204a8fb80d3a4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/codefetch/cli/codefetch-1.0.0-linux-amd64.tar.gz"
      sha256 "add146163622178b22e6735424a7fbe6d3b227a0ccc41d30fb8bfee8713bd35b"
    else
      url "https://get.everything.cloud/codefetch/cli/codefetch-1.0.0-linux-arm64.tar.gz"
      sha256 "0d1851619188447dc454167bdbd30471e328b8f82c1afb32cee4594fcd661ad5"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "version"
  end
end
