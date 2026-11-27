class KvaultCli < Formula
  desc "KVault command-line client"
  homepage "https://everything.cloud"
  version "0.14.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/kvault/cli/kvault-cli-0.14.0-darwin-amd64.tar.gz"
      sha256 "b9872a18a2a8bc861cfe0a7874f5161bc43cd211caa275e0660c6a9568467bca"
    else
      url "https://get.everything.cloud/kvault/cli/kvault-cli-0.14.0-darwin-arm64.tar.gz"
      sha256 "2f67f24fedeef28fb92ccdd1755150923fdd4c7aace58a05d3472a5cb8f0d5b0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/kvault/cli/kvault-cli-0.14.0-linux-amd64.tar.gz"
      sha256 "338ab913be678b5c1853ee68d03cc4677ae69e617ce2d8d58fd669c317e083f2"
    else
      url "https://get.everything.cloud/kvault/cli/kvault-cli-0.14.0-linux-arm64.tar.gz"
      sha256 "f7e8a2500cfebd3a1dd99e4522f897d44b7e2c8b7ee7b6af39adba242a03c5b7"
    end
  end

  def install
    bin.install "kvault"
  end

  test do
    system "#{bin}/kvault", "version"
  end
end
