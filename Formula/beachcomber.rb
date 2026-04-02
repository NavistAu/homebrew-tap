class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.1.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.1/beachcomber-v0.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "f67a31f9598630212349bc1f668e97bc7fe017d96446363247e4d7bf845f0a03"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.1/beachcomber-v0.1.1-x86_64-apple-darwin.tar.gz"
    sha256 "69b06ff0ad390b7d3c108629989ac4a9362b6e9fe5be72d6a129159853922579"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
