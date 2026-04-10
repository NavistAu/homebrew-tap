class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.3.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.3.1/beachcomber-v0.3.1-aarch64-apple-darwin.tar.gz"
    sha256 "c171f6d316175b4b1138cb842f7868728e3406c50885a7df06f542459c0ab5f9"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.3.1/beachcomber-v0.3.1-x86_64-apple-darwin.tar.gz"
    sha256 "6b74864b2e0d57c3861b0bcbe3b37d2e12bba9cd10b9562d81ca8cb36b42ed64"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
