class Azyst < Formula
  desc "Fast, focused home base for communication and work"
  homepage "https://azyst.com"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.3/azyst-darwin-arm64.tar.gz"
      sha256 "7281c824ef8ca52a85248a9abc98d86fc647f59db24bc0245a24d3967e478095"
    else
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.3/azyst-darwin-x64.tar.gz"
      sha256 "2d6162f52249ff37f821f47c02b274482143e1f38882710d412ef8fa7ad230e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.3/azyst-linux-arm64.tar.gz"
      sha256 "4011fef24a7651255446d2e41d8888c7a72e9b69c4d55ebd1854d3a049e43885"
    else
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.3/azyst-linux-x64.tar.gz"
      sha256 "6d549ea233f994945015e0dfba5e41467e2598d174e7c3fb687ecefa5ef2b0e7"
    end
  end

  def install
    bin.install "azyst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azyst --version")
  end
end
