class ReacksCli < Formula
  desc "ReACKs command-line tool"
  homepage "https://everything.cloud"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.3.0-darwin-amd64.tar.gz"
      sha256 "a20a0c884badc2f04e6404238713655e1155ccf176094fa8e5fd0d4878707b32"
    else
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.3.0-darwin-arm64.tar.gz"
      sha256 "26caed8925c251cb19acc0e1380075d501bb722939146f9312cb0e4d6ee889ff"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.3.0-linux-amd64.tar.gz"
      sha256 "95b0bbfae83eed82dc24cfbe60547d2634d27d360862752bb1405c8bbf089428"
    else
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.3.0-linux-arm64.tar.gz"
      sha256 "74c4f660fbd5559e4dc2c2b3dd35356ecb384f7f9629e1fb6ab69c2ab3094ed1"
    end
  end

  def install
    bin.install "reacks"
  end

  test do
    system "#{bin}/reacks", "version"
  end
end
