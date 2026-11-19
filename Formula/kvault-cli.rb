class KvaultCli < Formula
  desc "KVault command-line client"
  homepage "https://everything.cloud"
  version "0.6.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/kvault/cli/kvault-cli-0.6.3-darwin-amd64.tar.gz"
      sha256 "90232c419c53cf7edb7c89c8081d293c092186cb0d53ddff013920d7680ae820"
    else
      url "https://get.everything.cloud/kvault/cli/kvault-cli-0.6.3-darwin-arm64.tar.gz"
      sha256 "e9ac4d046426bb36abccc9bc442e379f57fe88ad22d43ae205083b1d191f2fa7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/kvault/cli/kvault-cli-0.6.3-linux-amd64.tar.gz"
      sha256 "e8153bee53ef8588ca332ef5dda96bcc82eb7846db5911618c2a3729856c2b04"
    else
      url "https://get.everything.cloud/kvault/cli/kvault-cli-0.6.3-linux-arm64.tar.gz"
      sha256 "7e101e4e468b2eaccfd24df149519278c846eab2b91882bbdaa8952971455818"
    end
  end

  def install
    bin.install "kvault-cli"
  end

  test do
    system "#{bin}/kvault-cli", "version"
  end
end
