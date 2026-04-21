class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.5.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.5.1/beachcomber-v0.5.1-aarch64-apple-darwin.tar.gz"
    sha256 "d83a3fc3dd06cc2c021119fbe3880d7e8b802d8567d56f696f244e73b14c0737"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.5.1/beachcomber-v0.5.1-x86_64-apple-darwin.tar.gz"
    sha256 "53c80bbfa4c6a13b3e64a147aadcd7147e41cf146b5d994dc5c5fbd496f721bf"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
