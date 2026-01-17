class FizzyCli < Formula
  desc "CLI for managing Fizzy boards, cards, and tasks"
  homepage "https://github.com/robzolkos/fizzy-cli"
  version "2.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robzolkos/fizzy-cli/releases/download/v#{version}/fizzy-darwin-arm64"
      sha256 "d2843f9d7dc07453503ec11d2a2988887ef736f3c340be9aeb26ac38d0d13fb1"
    else
      url "https://github.com/robzolkos/fizzy-cli/releases/download/v#{version}/fizzy-darwin-amd64"
      sha256 "8bf82b5e28f0717fee56787cc06cfa352669446569a283e9fa6d388be69a7344"
    end
  end

  def install
    binary_name = Hardware::CPU.arm? ? "fizzy-darwin-arm64" : "fizzy-darwin-amd64"
    bin.install binary_name => "fizzy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fizzy --version")
  end
end
