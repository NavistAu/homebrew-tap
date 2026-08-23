class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.8.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.8.0/beachcomber-v0.8.0-aarch64-apple-darwin.tar.gz"
    sha256 "1c9ecdd6131ce0a35f4fee22b1cbfee443c971c263f9f172ad0af86207254efb"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.8.0/beachcomber-v0.8.0-x86_64-apple-darwin.tar.gz"
    sha256 "dd5fdd935ef28e4f8f80f0b06baada17e7cab5cf789ea850b8fb07419e46e6aa"
  end

  def install
    bin.install "comb"
    lib.install "libbeachcomber.dylib"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
