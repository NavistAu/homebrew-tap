class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.4.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.4.0/beachcomber-v0.4.0-aarch64-apple-darwin.tar.gz"
    sha256 "c3de228e5a7cab3548cf4df9a4119ccc2ed90b9a1605b6ad0de469262dcc1ea1"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.4.0/beachcomber-v0.4.0-x86_64-apple-darwin.tar.gz"
    sha256 "238f89f1e02ceabc85e185f551339098ab09499a391b569049255bf4dada4f8c"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
