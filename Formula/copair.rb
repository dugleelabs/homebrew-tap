class Copair < Formula
  desc "Model-agnostic AI coding agent for the terminal"
  homepage "https://github.com/dugleelabs/copair"
  url "https://github.com/dugleelabs/copair/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args, "--production"
    bin.install_symlink libexec/"bin/copair"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/copair --version")
  end
end
