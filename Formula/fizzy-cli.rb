class FizzyCli < Formula
  desc "CLI for managing Fizzy boards, cards, and tasks"
  homepage "https://github.com/robzolkos/fizzy-cli"
  version "2.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robzolkos/fizzy-cli/releases/download/v#{version}/fizzy-darwin-arm64"
      sha256 "ab5e3a9ce9d94166ec1a6834e1e84801b0bf11ff62eef6fcdf99685af037e043"
    else
      url "https://github.com/robzolkos/fizzy-cli/releases/download/v#{version}/fizzy-darwin-amd64"
      sha256 "3f98706f8a2039b5c3d1c10fbf46879ac16188b06c78bb00cff76e9f5c55cd77"
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
