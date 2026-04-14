class Copair < Formula
  desc "Model-agnostic AI coding agent for the terminal"
  homepage "https://github.com/dugleelabs/copair"
  license "MIT"
  version "1.4.5"

  on_macos do
    on_arm do
      url "https://github.com/dugleelabs/copair/releases/download/v1.4.5/copair-darwin-arm64"
      sha256 "9134359b8f361125ad45d9fe0789ccadd846d6dc899378c451aca75fabef81e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dugleelabs/copair/releases/download/v1.4.5/copair-linux-x64"
      sha256 "ef756d7559d8176853ec20d31c2d6baedaa9523cb6feb8c7fc312f3d8c059441"
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
