class Azyst < Formula
  desc "Fast, focused home base for communication and work"
  homepage "https://azyst.com"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.4/azyst-darwin-arm64.tar.gz"
      sha256 "84c1c9854136598f90cc91d8cfb58be92c1a4a8e0f78010a2af542774bc74042"
    else
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.4/azyst-darwin-x64.tar.gz"
      sha256 "bce519cfe3855883585bba4b5896e4a4b51a58912c983cb3dae8b56f3176edb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.4/azyst-linux-arm64.tar.gz"
      sha256 "69542ee39dfb45fc0fb4058ad32fee31d7abe2e4cd3859c3aaf2be0143af7ed4"
    else
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.4/azyst-linux-x64.tar.gz"
      sha256 "e7c98b5f90e12684d5c16941a4bff19921aeccb69c03d55ba3bdfe49400a2aff"
    end
  end

  def install
    bin.install "azyst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azyst --version")
  end
end
