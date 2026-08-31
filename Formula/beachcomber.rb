class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.9.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.9.0/beachcomber-v0.9.0-aarch64-apple-darwin.tar.gz"
    sha256 "b444d8d16682d1d39943723e8a3ca5b4261d4cf7435d00282ba38b5a1220845c"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.9.0/beachcomber-v0.9.0-x86_64-apple-darwin.tar.gz"
    sha256 "38a843682cce071ab6fdb132f98cadbcaaf0639ee2e9cf6d9b47e0f458c25129"
  end

  def install
    bin.install "comb"
    lib.install "libbeachcomber.dylib"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
