class Codefetch < Formula
  desc "codefetch cli"
  homepage "https://everything.cloud"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/codefetch/cli/codefetch-cli-2.0.0-darwin-amd64.tar.gz"
      sha256 "ad414abbd2d285996e6a889bbbc941ff646a210a307a04641d00ba7ef251690e"
    else
      url "https://get.everything.cloud/codefetch/cli/codefetch-cli-2.0.0-darwin-arm64.tar.gz"
      sha256 "effc112313052fd6fbc01f51f98425e6f6a4cc63983935238b71292002c150c2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/codefetch/cli/codefetch-cli-2.0.0-linux-amd64.tar.gz"
      sha256 "592ca8ac099bec4b733ee5f7882f5b815eb3ca4013d294265aa2aa5ed73b14fb"
    else
      url "https://get.everything.cloud/codefetch/cli/codefetch-cli-2.0.0-linux-arm64.tar.gz"
      sha256 "f8db60c7577d125bbb61887dc5cf3f07241725b7107b14877123355d11dff4bd"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "version"
  end
end
