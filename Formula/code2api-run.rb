class Code2apirun < Formula
  desc "code2api run"
  homepage "https://everything.cloud"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.1-darwin-amd64.tar.gz"
      sha256 "0035547a28ca7bab144df3eb1e8d5b2b29bff9ff21b1fd8609ef159fdadff940"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.1-darwin-arm64.tar.gz"
      sha256 "ddd03aa59b6d2a33a64ebb205839676ea5c96eaf8c42b5f0649c2b69764d3483"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.1-linux-amd64.tar.gz"
      sha256 "ae9a4e4f01b27415b554ff6e2f08768f7711ac04e530a21934fb2920b11fc823"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.1-linux-arm64.tar.gz"
      sha256 "8fce011a0f043f32da8473cb7c2a7577117cc2edbd73171390501a62952ce8de"
    end
  end

  def install
    bin.install "code2api-run"
  end

  test do
    system "#{bin}/code2api-run", "version"
  end
end
