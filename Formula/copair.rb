class Copair < Formula
  desc "Model-agnostic AI coding agent for the terminal"
  homepage "https://github.com/dugleelabs/copair"
  license "MIT"
  version "1.5.0"

  on_macos do
    on_arm do
      url "https://github.com/dugleelabs/copair/releases/download/v1.5.0/copair-darwin-arm64"
      sha256 "062b5921e381f78a19d07a315931ad248b496eb35f70d88712ac866c6cd4ea50"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dugleelabs/copair/releases/download/v1.5.0/copair-linux-x64"
      sha256 "2f80cba848716d2bdc04992a44027c5dc25529185bae62f94252c41b098b9ddd"
    end
  end

  def install
    binary = Dir["copair-*"].first || "copair"
    bin.install binary => "copair"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/copair --version")
  end
end
