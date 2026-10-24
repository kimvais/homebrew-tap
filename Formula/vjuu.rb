# Template for Formula/vjuu.rb in github.com/kimvais/homebrew-tap; the release workflow fills in @...@.
class Vjuu < Formula
  desc "Fast review window for AI-agent handoffs, with inline comments"
  homepage "https://github.com/kimvais/vjuu"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.2/vjuu-v0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "8a74c62866ca1fe905da7b546a00aba6a5c04aa86e92704f682909d5b54c6d20"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.2/vjuu-v0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "f07ad04db54771ea989324111f3509530103e82cfa1517cd7c5d0dfadd2608e9"
    end
  end

  # Linux builds link the system's WebKitGTK 4.1 and GTK 3 (Debian/Ubuntu: libwebkit2gtk-4.1-0).
  on_linux do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.2/vjuu-v0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "04e7f2f2612a3c084f524acf4ffae2420b9ee192fbe9ff6a38c9d374e29c03cd"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.2/vjuu-v0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0666fb3810d8604fe157ff197ba014ca43e07a0d2f04ff4b2ac1298e8c15fb9a"
    end
  end

  def install
    bin.install "vjuu"
  end

  test do
    # No arguments: prints usage and exits 2, without opening a window.
    assert_match "usage: vjuu", shell_output("#{bin}/vjuu 2>&1", 2)
  end
end
