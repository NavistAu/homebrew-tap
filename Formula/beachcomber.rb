class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.1.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.0/beachcomber-v0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "04be9e963ae1e6291c398ef5dd890fb953a68351cf1f10d8b2ff233e4126833a"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.1.0/beachcomber-v0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "3917c7cb21c1533f39ba4f530acc1ec84cb82570ec547d04ebec162ef564a28c"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
