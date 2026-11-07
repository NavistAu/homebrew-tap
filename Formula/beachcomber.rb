class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.10.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.10.1/beachcomber-v0.10.1-aarch64-apple-darwin.tar.gz"
    sha256 "3eabe0724f29486f3b7d6105b562a6c8cac3d425c35f2526c0ff594b55c91598"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.10.1/beachcomber-v0.10.1-x86_64-apple-darwin.tar.gz"
    sha256 "eb723dc0cef151426c050886f096fd99f85cd672c53c79ebf4b48f323789fa9f"
  end

  def install
    bin.install "comb"
    lib.install "libbeachcomber.dylib"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
