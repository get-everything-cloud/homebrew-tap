class Code2apirun < Formula
  desc "code2api run"
  homepage "https://everything.cloud"
  version "1.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.2-darwin-amd64.tar.gz"
      sha256 "87fd989f54e978986f200482b8dd6bd281485fed7bb057a4616883941ed77810"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.2-darwin-arm64.tar.gz"
      sha256 "222b97008c4349e610721b85c27527a9e6c515b629f1c1630461107a3021e2bf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.2-linux-amd64.tar.gz"
      sha256 "1b94a6e9b10581e314b6a5b57640ea2771d380621dc8df0642d1d90ed59d1080"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.2-linux-arm64.tar.gz"
      sha256 "fc552c5985b6e9ee75b5317446594ba8fb01a0764ab224ff308cca0c7c15ae7c"
    end
  end

  def install
    bin.install "code2api-run"
  end

  test do
    system "#{bin}/code2api-run", "version"
  end
end
