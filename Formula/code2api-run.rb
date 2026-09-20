class Code2apirun < Formula
  desc "code2api run"
  homepage "https://everything.cloud"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.0.0-darwin-amd64.tar.gz"
      sha256 "3e0f00eef3271dc3b1c7812249bf75d9aba8fa0d7c7efb0ee3fb6d3eb69602e2"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.0.0-darwin-arm64.tar.gz"
      sha256 "a852e6d09fa9382292a05402778058d0ab9f03be1d8c4d54f2866d8ccc5d9e09"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.0.0-linux-amd64.tar.gz"
      sha256 "b298ebfc6cf31c6c7f8e442b1e1d87ad8d8412676361f22c509e4a40ffdac484"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.0.0-linux-arm64.tar.gz"
      sha256 "1fa797de4dfa07f9bc759d6956adae5f558cbc3584ea0c78f4833d7a2f9b0dff"
    end
  end

  def install
    bin.install "code2api-run"
  end

  test do
    system "#{bin}/code2api-run", "version"
  end
end
