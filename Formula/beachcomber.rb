class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.5.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.5.0/beachcomber-v0.5.0-aarch64-apple-darwin.tar.gz"
    sha256 "d09bafc7ecc6267abcfb52c9202d684524373fbc2b2ae12b79862dbb4964c17a"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.5.0/beachcomber-v0.5.0-x86_64-apple-darwin.tar.gz"
    sha256 "a3af7f3236540f56e525a73d2db30088a26aae96a10f698a662dd5a18b7d965a"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
