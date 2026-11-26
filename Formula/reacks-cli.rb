class ReacksCli < Formula
  desc "ReACKs command-line tool"
  homepage "https://everything.cloud"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.4.0-darwin-amd64.tar.gz"
      sha256 "4bd0575ce117eb83a4c33bd15c0dc2a40e960ccf02cfe930cf30fcc70d1e907c"
    else
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.4.0-darwin-arm64.tar.gz"
      sha256 "28418ba441d6419d0e4c1ecc8715ab703a97cc56d44a1e5a5376a7504404d46e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.4.0-linux-amd64.tar.gz"
      sha256 "3fa137daae33b5bf9bc75e41e7026444be188a323fa1d60fd9005c5171e25f6a"
    else
      url "https://get.everything.cloud/reacks/cli/reacks-cli-0.4.0-linux-arm64.tar.gz"
      sha256 "1d0f754dff295118b259e2c966f666fae9cf9f2c6b8ba4f70ddccb94c023a709"
    end
  end

  def install
    bin.install "reacks"
  end

  test do
    system "#{bin}/reacks", "version"
  end
end
