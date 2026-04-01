class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.1.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.1/beachcomber-v0.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "0171e774e667e713389bdbf0b8aee841a8a515edc7894b1845c3293d76f8b802"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.1/beachcomber-v0.1.1-x86_64-apple-darwin.tar.gz"
    sha256 "4d1a17cc3e0bb7d1e02fd27513e1ebcc6d4592cced8ad68cf10f38ce66e52c9b"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
