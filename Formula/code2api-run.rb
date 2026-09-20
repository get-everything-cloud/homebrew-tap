class Code2apirun < Formula
  desc "code2api run"
  homepage "https://everything.cloud"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.0.0-darwin-amd64.tar.gz"
      sha256 "5295d492838c3a0d9420760448cc13618fc87989279bd73abeac8d9cb97d996c"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.0.0-darwin-arm64.tar.gz"
      sha256 "456f4e315c4fc3a29eecc6bf05fdede82f3609dae5df9be2969424999bee9dd3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.0.0-linux-amd64.tar.gz"
      sha256 "8c65c2dd6f8a3ce1235a3a5eecc834e69daf175051c0ec5f1a7fe3561d0deb1a"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.0.0-linux-arm64.tar.gz"
      sha256 "9b4bac5b22d92f619deccad3e46779e3d67b0ea81f326b9dc7ae23ebeadea747"
    end
  end

  def install
    bin.install "code2api-run"
  end

  test do
    system "#{bin}/code2api-run", "version"
  end
end
