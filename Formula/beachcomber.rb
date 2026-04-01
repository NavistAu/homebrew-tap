class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.1.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.0/beachcomber-v0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "0fb18b79e2fa44abe83770a00a5866cee24c9b80d83fc89de3e24316165f6ae0"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.0/beachcomber-v0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "8762d855658eaeb88fee1d43870f91505cc5dfc0d17ebc6ccc1ecff9c46b4668"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
