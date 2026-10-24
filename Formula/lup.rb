class Lup < Formula
  desc "Walk up the directory hierarchy looking for a file"
  homepage "https://github.com/NavistAu/lup"
  version "0.3.0"
  license "MIT OR Apache-2.0"

  if OS.mac?
    url "https://github.com/NavistAu/lup/releases/download/v0.3.0/lup-v0.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "1f20bebd3ac2adbf5a6e0bab009774d4fcbc41c1c2e41ded7a54504f5d6e388f"
  else
    url "https://github.com/NavistAu/lup/releases/download/v0.3.0/lup-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "c580dc96f8d931a40ad6456ca9ce78f4fc4c54fd8c78c87ad754623a9c161cab"
  end

  def install
    bin.install "lup"
  end

  test do
    assert_match "lup", shell_output("#{bin}/lup --version")
  end
end
