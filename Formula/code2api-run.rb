class Code2apirun < Formula
  desc "code2api run"
  homepage "https://everything.cloud"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.1-darwin-amd64.tar.gz"
      sha256 "5f69ac0df3981fe4df552842f1d2fe0e1c1a5592ec745dcb721298f545621e14"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.1-darwin-arm64.tar.gz"
      sha256 "ee5df1f05e975204d316f7b926e5a3700b3069fd28d322c83a808928b89c577e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.1-linux-amd64.tar.gz"
      sha256 "4f5ac86ed9da3d62cfc8481d91862498d8b05b7e73b193e6f30ca7d262bb7e55"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.1-linux-arm64.tar.gz"
      sha256 "f904f87ad1111b4d56ecf62ec3f46278f3be0462d9497aab0646be9a12a9d5c2"
    end
  end

  def install
    bin.install "code2api-run"
  end

  test do
    system "#{bin}/code2api-run", "version"
  end
end
