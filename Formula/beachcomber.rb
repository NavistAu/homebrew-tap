class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.7.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.7.0/beachcomber-v0.7.0-aarch64-apple-darwin.tar.gz"
    sha256 "be92fe923988e14410efe92e41e797e70a3528873b574180ff8a9dae4e2eca60"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.7.0/beachcomber-v0.7.0-x86_64-apple-darwin.tar.gz"
    sha256 "7b23a5389c380bd560760f28551905c5f2789a37fe7b51b0a828a07d6ccdb3dc"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
