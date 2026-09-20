class Code2apirun < Formula
  desc "code2api run"
  homepage "https://everything.cloud"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.0.0-darwin-amd64.tar.gz"
      sha256 "cc65cd2cccfcbbe12a605e211452e2fb33f7134ff77e404ab4f51ec833b5191c"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.0.0-darwin-arm64.tar.gz"
      sha256 "b6f8916fb25744b06d9a925361f0e52688f6dd06adf816e23206e623f56e9395"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.0.0-linux-amd64.tar.gz"
      sha256 "586a00faf517c1e848675850a0d95a8ce2b7bd54c0f8a98fb2a42027f163fb41"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.0.0-linux-arm64.tar.gz"
      sha256 "be9eda6f18bd6c402cc5f09e4f0e423bb3d83a0dfdc03e1da8bb617bdea4c994"
    end
  end

  def install
    bin.install "code2api-run"
  end

  test do
    system "#{bin}/code2api-run", "version"
  end
end
