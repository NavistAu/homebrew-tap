class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.2.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.2.0/beachcomber-v0.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "80779d137e05dc5766dab247c825b5a27ea6b1d8c1fd8ae47fc0724ac2f1fc08"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.2.0/beachcomber-v0.2.0-x86_64-apple-darwin.tar.gz"
    sha256 "f857ceba3ce4091bddb456379a23a0302f90d979cc57936cacf9d2784739ead7"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
