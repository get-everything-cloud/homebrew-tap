class ReacksCli < Formula
  desc "ReACKs command-line tool"
  homepage "https://everything.cloud"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.3.1-darwin-amd64.tar.gz"
      sha256 "8970e7d90a0f8b8959fb63ef4d895177af7fb8b2457cb278c537817da33340e6"
    else
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.3.1-darwin-arm64.tar.gz"
      sha256 "2aaee60672557fafbc6406e1e3ea8ef762e1cbdb076aed908599edcb74847a29"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.3.1-linux-amd64.tar.gz"
      sha256 "53dbc0195b901795d70fa51e093796876662766431e620886d5686fcc04817ed"
    else
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.3.1-linux-arm64.tar.gz"
      sha256 "dac6d0178d70a7b049765980a9e3c76027bab8d3e3badb87e22597dbd3b704bd"
    end
  end

  def install
    bin.install "reacks"
  end

  test do
    system "#{bin}/reacks", "version"
  end
end
