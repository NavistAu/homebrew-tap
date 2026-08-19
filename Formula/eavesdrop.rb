class Eavesdrop < Formula
  desc "Read-only tail of cross-session messages between Claude Code agents"
  homepage "https://github.com/NavistAu/eavesdrop"
  version "0.1.0"
  license "AGPL-3.0-only"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/eavesdrop/releases/download/v0.1.0/eavesdrop-v0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "1481064eb34efffdf8f8a6f6495c9390f071741600db51138f0ce68560ffe221"
  else
    url "https://github.com/NavistAu/eavesdrop/releases/download/v0.1.0/eavesdrop-v0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "ac8f21f5028392cf3d82696815475b8737a9547dd0245a0d70d751def86c476c"
  end

  def install
    bin.install "eavesdrop"
  end

  test do
    assert_match "eavesdrop", shell_output("#{bin}/eavesdrop --version")
  end
end
