class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.1.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.1/beachcomber-v0.1.1-aarch64-apple-darwin.tar.gz"
    sha256 "b4e545bbc402b9d1fb34553cd2aeffa935d7b89a29256f9f1e2b2c5be07adf4c"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.1/beachcomber-v0.1.1-x86_64-apple-darwin.tar.gz"
    sha256 "4531fea82da13fd56e3ebb2e787193acb8271a249385187999b81fbaeb4deb42"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
