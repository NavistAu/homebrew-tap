class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.6.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.6.0/beachcomber-v0.6.0-aarch64-apple-darwin.tar.gz"
    sha256 "184473287ae3b0cd2f547a03908cee0cb65d3d87ca22de45b54fda8847e4422c"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.6.0/beachcomber-v0.6.0-x86_64-apple-darwin.tar.gz"
    sha256 "9d1ff2d1faff36e1c5c7c13f5db504cce585421e7981c68e81ee0040c48ceacd"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
