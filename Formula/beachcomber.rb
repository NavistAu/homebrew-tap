class Beachcomber < Formula
  desc "Daemon that caches shell environment state for instant prompt rendering"
  homepage "https://github.com/NavistAu/beachcomber"
  version "0.6.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.6.1/beachcomber-v0.6.1-aarch64-apple-darwin.tar.gz"
    sha256 "942ab581dd569613fb1fbb7246be92d02a743058a0dae8674cd2c5d06bba717e"
  else
    url "https://github.com/NavistAu/beachcomber/releases/download/v0.6.1/beachcomber-v0.6.1-x86_64-apple-darwin.tar.gz"
    sha256 "2908d762ecad3846c80191fc3dcb77fdaa18cf25ed8a874d4a200337adb7e1d4"
  end

  def install
    bin.install "comb"
  end

  test do
    assert_match "beachcomber", shell_output("#{bin}/comb --version")
  end
end
