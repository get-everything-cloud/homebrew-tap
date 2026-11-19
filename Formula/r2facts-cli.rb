class R2factsCli < Formula
  desc "Build, package, sign and publish releases to an R2Facts instance"
  homepage "https://everything.cloud"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.2.0-darwin-amd64.tar.gz"
      sha256 "361829a282bab102ecb75bcb51809511429503496a7741b2348a292e7c0730bc"
    else
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.2.0-darwin-arm64.tar.gz"
      sha256 "bae535bbe9c3895937a70a61f7a8091b99914e3adbdaabc1016fb8377605bb0e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.2.0-linux-amd64.tar.gz"
      sha256 "b64b5aa5720827913b436bf5e0341e7995ddb1e88ba5b706677e6e4fcb68f05a"
    else
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.2.0-linux-arm64.tar.gz"
      sha256 "3cae9f8a005191ee2a4e18faffe8c723c1ccaf41a0b70aab278ba2ee0396a13c"
    end
  end

  def install
    bin.install "r2facts"
  end

  test do
    system "#{bin}/r2facts", "version"
  end
end
