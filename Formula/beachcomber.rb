class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.3.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.3.0/beachcomber-v0.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "9b9cd7d5ac7da67a753f72751acb8de221d509ca5141d8bc33a144bd8db3d69f"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.3.0/beachcomber-v0.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "07aa6d7a04d395e4bd0fd0f7cdb28d5cefcb5ee51954fdfc8d7a55f44b2422fe"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
