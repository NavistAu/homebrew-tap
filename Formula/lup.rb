class Lup < Formula
  desc "Walk up the directory hierarchy looking for a file"
  homepage "https://github.com/NavistAu/lup"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  if OS.mac?
    url "https://github.com/NavistAu/lup/releases/download/v0.2.0/lup-v0.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "ae0f02a8da538b2b8b0c84c12f0f88ee1dac3d78647dbc43ea4f750a6c63df0b"
  else
    url "https://github.com/NavistAu/lup/releases/download/v0.2.0/lup-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9727ed9b157071d245f32c1cf0c1b2a0a08511b88bbb30b48ad55dca13ea855f"
  end

  def install
    bin.install "lup"
  end

  test do
    assert_match "lup", shell_output("#{bin}/lup --version")
  end
end
