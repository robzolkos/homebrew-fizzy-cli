class FizzyCli < Formula
  desc "CLI for managing Fizzy boards, cards, and tasks"
  homepage "https://github.com/robzolkos/fizzy-cli"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robzolkos/fizzy-cli/releases/download/v#{version}/fizzy-darwin-arm64"
      sha256 "724bd6e711e1a17a0bf419dcb8337c4d4de037a23d9ccf2ef85dbb291b4042bb"
    else
      url "https://github.com/robzolkos/fizzy-cli/releases/download/v#{version}/fizzy-darwin-amd64"
      sha256 "4f72a2d0ed676999a80d66004f35283fe2eb1152ad7e400aaa44e8a582b2b7aa"
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
