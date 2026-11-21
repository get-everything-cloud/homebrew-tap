class R2factsCli < Formula
  desc "Build, package, sign and publish releases to an R2Facts instance"
  homepage "https://everything.cloud"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.3.0-darwin-amd64.tar.gz"
      sha256 "101ed7f9577a4500e3762a3d9d7b456d4796b7198135f55be734ee9bdc226cdd"
    else
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.3.0-darwin-arm64.tar.gz"
      sha256 "6e26e6defe1589b4775b85d52c194b8c4279d6cdd97ade4ca64d88b25a522c53"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.3.0-linux-amd64.tar.gz"
      sha256 "fffb27ec61d8a8baeb3383d5910c085e49be3575558649c70e16d21e30a4f494"
    else
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.3.0-linux-arm64.tar.gz"
      sha256 "b8f7604d4fb410ac250add278adb14facddce23f6feb3cacc8ca2532967a93e9"
    end
  end

  def install
    bin.install "r2facts"
  end

  test do
    system "#{bin}/r2facts", "version"
  end
end
