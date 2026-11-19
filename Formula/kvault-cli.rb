class KvaultCli < Formula
  desc "KVault command-line client"
  homepage "https://everything.cloud"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/kvault/cli/kvault-cli-0.7.0-darwin-amd64.tar.gz"
      sha256 "e19fe7152c5a3c731d13ca7aa9dc620a4d9fbfdb952d9af12192e0cfbbe3097d"
    else
      url "https://get.everything.cloud/kvault/cli/kvault-cli-0.7.0-darwin-arm64.tar.gz"
      sha256 "8d6c03a1d1ac7a6f804e772f7a288ffd06e16d245f31e545fb6fcc6ed80528cc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/kvault/cli/kvault-cli-0.7.0-linux-amd64.tar.gz"
      sha256 "98ef9b00f47899ad31c861d66936b9c0f3870eec5e00434aea03ba47337bf373"
    else
      url "https://get.everything.cloud/kvault/cli/kvault-cli-0.7.0-linux-arm64.tar.gz"
      sha256 "bacd793163a111f29835b4e096675ebaf8bdad6932c952ec20f0f0f665b9a64a"
    end
  end

  def install
    bin.install "kvault"
  end

  test do
    system "#{bin}/kvault", "version"
  end
end
