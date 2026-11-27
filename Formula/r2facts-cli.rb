class R2factsCli < Formula
  desc "Build, package, sign and publish releases to an R2Facts instance"
  homepage "https://everything.cloud"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.3.2-darwin-amd64.tar.gz"
      sha256 "6feac60846a436105795f16f385d85e487237f88946e8e754dfc8ef9fa3eb3af"
    else
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.3.2-darwin-arm64.tar.gz"
      sha256 "2ef821f53b8260d4391e7e4fa55982296fc70c4065471c549b3e1fcbebcd4266"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.3.2-linux-amd64.tar.gz"
      sha256 "f753a2b539f12b655fee2c3e2ac9a32d5531cbcfae4f0bb4e76b72140ce73eb7"
    else
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.3.2-linux-arm64.tar.gz"
      sha256 "c5f96a360b7ae2bc66985b27229a3404ed1fa5cefc795e44e83914e54bebba36"
    end
  end

  def install
    bin.install "r2facts"
  end

  test do
    system "#{bin}/r2facts", "version"
  end
end
