class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.9.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.9.1/beachcomber-v0.9.1-aarch64-apple-darwin.tar.gz"
    sha256 "53effc3a33044650fca72d7e95a8b42af5c498d5d1920ca55c91a3a98e310f8e"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.9.1/beachcomber-v0.9.1-x86_64-apple-darwin.tar.gz"
    sha256 "4c193a0ba88784951666463450abd512b9818ec59625a6e901811eed4693a413"
  end

  def install
    bin.install "comb"
    lib.install "libbeachcomber.dylib"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
