class FizzyCli < Formula
  desc "CLI for managing Fizzy boards, cards, and tasks"
  homepage "https://github.com/robzolkos/fizzy-cli"
  version "2.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robzolkos/fizzy-cli/releases/download/v#{version}/fizzy-darwin-arm64"
      sha256 "64f7422288c09ba8f218f0944a0afb3a9fcd326d8d9abfcee5087fd96a6a2edf"
    else
      url "https://github.com/robzolkos/fizzy-cli/releases/download/v#{version}/fizzy-darwin-amd64"
      sha256 "0744bb56fdff0c0240ea5492110c05976d231c3a1056fbcf21749f8b69be1faa"
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
