class Azyst < Formula
  desc "Fast, focused home base for communication and work"
  homepage "https://azyst.com"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.2/azyst-darwin-arm64.tar.gz"
      sha256 "d945d07b86962d70ee99a3f57d8d7e0de7eaeaf3e29914ac9ee97d7f35c9d587"
    else
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.2/azyst-darwin-x64.tar.gz"
      sha256 "9f06effcc172efb37fb99952e9f5700318234a3aa05344791503589bcb89f89d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.2/azyst-linux-arm64.tar.gz"
      sha256 "e942540cdccb33da177da4f9129deb69d399fb97f69b853d34709bad4aeb7218"
    else
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.2/azyst-linux-x64.tar.gz"
      sha256 "086552fa8e711e06499b60ef69375645155d057bb038bf037162d3b71353c031"
    end
  end

  def install
    bin.install "azyst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azyst --version")
  end
end
