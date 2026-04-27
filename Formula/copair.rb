class Copair < Formula
  desc "Model-agnostic AI coding agent for the terminal"
  homepage "https://github.com/dugleelabs/copair"
  license "MIT"
  version "1.7.0"

  on_macos do
    on_arm do
      url "https://github.com/dugleelabs/copair/releases/download/v1.7.0/copair-darwin-arm64"
      sha256 "3a0f349fa119b33fb05c6e952846ee431ec3afa917230fe933991936097654bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dugleelabs/copair/releases/download/v1.7.0/copair-linux-x64"
      sha256 "af9cc3cb1824fb50d526ff2a0f9d0f14f08d7b831f7d2aa68a86a6afd256227e"
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
