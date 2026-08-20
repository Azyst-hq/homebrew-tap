class Azyst < Formula
  desc "Fast, focused home base for communication and work"
  homepage "https://azyst.com"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.1/azyst-darwin-arm64.tar.gz"
      sha256 "66add3af61087a268353aa74afb3d68b32aa3dd859d4983f8733613174d3b54e"
    else
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.1/azyst-darwin-x64.tar.gz"
      sha256 "0d22a9f141ff2d0a857e87b4979a32a063ccc03be0daf1d934bd992f0e9d42d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.1/azyst-linux-arm64.tar.gz"
      sha256 "dc12d784b07eae25f3cf3b5a868bb853b2cabb40fa264358034a1bd7e2f4c007"
    else
      url "https://github.com/azyst-hq/cli/releases/download/v0.0.1/azyst-linux-x64.tar.gz"
      sha256 "62c8bd38ac44279219173d6a4b43dfcb4a81a93c71c8af337f888569508aee05"
    end
  end

  def install
    bin.install "azyst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azyst --version")
  end
end
