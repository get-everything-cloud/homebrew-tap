class Codefetch < Formula
  desc "codefetch cli"
  homepage "https://everything.cloud"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/codefetch/cli/codefetch-cli-2.0.0-darwin-amd64.tar.gz"
      sha256 "70af4a46d91ef63d29cd6619a5cbc886832ec1ee46322fe0811679002308af05"
    else
      url "https://get.everything.cloud/codefetch/cli/codefetch-cli-2.0.0-darwin-arm64.tar.gz"
      sha256 "8e6ade1ae312985bee7d645d2d40b7259bc54fcecbb84cac604c95b4956203f3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://get.everything.cloud/codefetch/cli/codefetch-cli-2.0.0-linux-amd64.tar.gz"
      sha256 "3aecd3e83873ab74a8c8b676d23d3e533b218373de50da169caa67319929d98a"
    else
      url "https://get.everything.cloud/codefetch/cli/codefetch-cli-2.0.0-linux-arm64.tar.gz"
      sha256 "6f9b17e5ee03772a1a9ad4c65f17d25b0e67dffdeedb6202cc61a007c9bbbedd"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "version"
  end
end
