class R2factsCli < Formula
  desc "Build, package, sign and publish releases to an R2Facts instance"
  homepage "https://everything.cloud"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.3.1-darwin-amd64.tar.gz"
      sha256 "3db6e672cff7fab8811d36094bb3d6c768d7639d9ad74e2208842fa7bd2aac90"
    else
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.3.1-darwin-arm64.tar.gz"
      sha256 "6a929bca8e40657e1bf7a2e70ee3e9ba04defde347c6b99c804ab803374280bc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.3.1-linux-amd64.tar.gz"
      sha256 "647fc1fab8774fc8a46eb7cbcfd793e43ab9eeca543aa2d4ec040e67c234434e"
    else
      url "https://get.everything.cloud/r2facts/cli/r2facts-cli-0.3.1-linux-arm64.tar.gz"
      sha256 "07e566acc16e984d2ea8040e2c26633aa57152951542bedb153fbf22f5ac7d7a"
    end
  end

  def install
    bin.install "r2facts"
  end

  test do
    system "#{bin}/r2facts", "version"
  end
end
