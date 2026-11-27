class ReacksCli < Formula
  desc "ReACKs command-line tool"
  homepage "https://everything.cloud"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.4.1-darwin-amd64.tar.gz"
      sha256 "271be0ad90eb21d17eb64afc72b399a91dfcf0f2251489e9b03a34500a2d376e"
    else
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.4.1-darwin-arm64.tar.gz"
      sha256 "08cb9ceb372c3eda8976d80249e8e0e9547e9dbc38c1c050cf5995c297751e31"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.4.1-linux-amd64.tar.gz"
      sha256 "22056e42ebeefbb14f1b9f6d505933a436f7adb130fcf75697b4b4b60562a358"
    else
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.4.1-linux-arm64.tar.gz"
      sha256 "12803e7be2282e8f227d13ea9578584a2bdb84f42c050c2286af6467d18c1e66"
    end
  end

  def install
    bin.install "reacks"
  end

  test do
    system "#{bin}/reacks", "version"
  end
end
