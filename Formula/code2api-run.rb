class Code2apirun < Formula
  desc "code2api run"
  homepage "https://everything.cloud"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.0-darwin-amd64.tar.gz"
      sha256 "04b68cb7df69fecbafd8c3b8b72de8f95c88248a59492506b401b91ea547ba79"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.0-darwin-arm64.tar.gz"
      sha256 "a82f618f3b82d6175308d89ecd6e427aa30ecc02a11e58241801f6c2d1c3e785"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.0-linux-amd64.tar.gz"
      sha256 "eb4a6a5429d5f307ac9eb926fe31062a366889248697fc9575b70d0ddb61691e"
    else
      url "https://get.everything.cloud/code2api/run/code2api-run-1.1.0-linux-arm64.tar.gz"
      sha256 "8a905c15ca2713e50fbfb6aba649a30c40647fe682a9bf4fe16cc4f2345a346a"
    end
  end

  def install
    bin.install "code2api-run"
  end

  test do
    system "#{bin}/code2api-run", "version"
  end
end
