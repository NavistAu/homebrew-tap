class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.1.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.1/beachcomber-v0.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "70728ce122fac8e50cffe26652ce1ebbd51038477b10626eefd5cad7c2e7213f"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.1/beachcomber-v0.1.1-x86_64-apple-darwin.tar.gz"
    sha256 "7ce2d220aa7de18b5828b8993a796dd4111c64c4c62e2a38c7ed982b7b11d5e7"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
