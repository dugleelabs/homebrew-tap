class Copair < Formula
  desc "Model-agnostic AI coding agent for the terminal"
  homepage "https://github.com/dugleelabs/copair"
  license "MIT"
  version "1.6.0"

  on_macos do
    on_arm do
      url "https://github.com/dugleelabs/copair/releases/download/v1.6.0/copair-darwin-arm64"
      sha256 "c28c28ded15b2bfb83539606db39cd5f7ffcf6d38082b0bff24ce86ef11f7c34"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dugleelabs/copair/releases/download/v1.6.0/copair-linux-x64"
      sha256 "bee4e52b99f9a4c0c12fd6e0ac971f1cec345ac5da1f59e6da52c991970916e2"
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
