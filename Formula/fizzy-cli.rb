class FizzyCli < Formula
  desc "CLI for managing Fizzy boards, cards, and tasks"
  homepage "https://github.com/robzolkos/fizzy-cli"
  version "2.0.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robzolkos/fizzy-cli/releases/download/v#{version}/fizzy-darwin-arm64"
      sha256 "36777712ce781e15b5aa4e5b6eaac01afb9b0a05fde0eb31d3d1c0eaa0a086f7"
    else
      url "https://github.com/robzolkos/fizzy-cli/releases/download/v#{version}/fizzy-darwin-amd64"
      sha256 "2a26e5c58f3116fd0423b0bc2235a542e43f89a7f7860b95b1360c96404348e9"
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
