class Railing < Formula
  desc "Guardrails for AI-written code: one gate, a ratchet and a Claude Code hook"
  homepage "https://github.com/Zontak-LLC/railing"
  url "https://github.com/Zontak-LLC/railing/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c30a677dc98d7b2a5369563f4631a68d071a81a867065c7f44f47988f1ff43a3"
  license "MIT"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/railing.mjs" => "railing"
  end

  test do
    assert_match "guardrails for AI-written code", shell_output("#{bin}/railing --help")
  end
end
