class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.10.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.10.0/beachcomber-v0.10.0-aarch64-apple-darwin.tar.gz"
    sha256 "9be2f3d387c9bb1a684c182947eada528dd85942892bb415b374e0a181bd7509"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.10.0/beachcomber-v0.10.0-x86_64-apple-darwin.tar.gz"
    sha256 "982f7672380b6be50b3cc9f0c812204a0a89fab376548f1ab64814bbe389b4df"
  end

  def install
    bin.install "comb"
    lib.install "libbeachcomber.dylib"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
