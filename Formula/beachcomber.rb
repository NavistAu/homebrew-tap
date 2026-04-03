class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.1.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.1/beachcomber-v0.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "f85e2c8290ec151b4f9af9610bef5f5ae66e6930e992aabde859b7650f68fa38"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.1/beachcomber-v0.1.1-x86_64-apple-darwin.tar.gz"
    sha256 "3218cd7c3641481a7bafce256b630a5650161238af395c739171db6d00bec6ec"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
