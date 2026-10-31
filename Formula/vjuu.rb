# Template for Formula/vjuu.rb in github.com/kimvais/homebrew-tap; the release workflow fills in @...@.
class Vjuu < Formula
  desc "Fast review window for AI-agent handoffs, with inline comments"
  homepage "https://github.com/kimvais/vjuu"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.6.0/vjuu-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa89c10e1efdf8547d985b255ff2b104bc162764d03ce23f0b3e5b70134f6ac8"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.6.0/vjuu-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "4f5303077c87d559d519510113e28616585ddb8739e321f1d9117ea46a5c7c71"
    end
  end

  # Linux builds link the system's WebKitGTK 4.1 and GTK 3 (Debian/Ubuntu: libwebkit2gtk-4.1-0).
  on_linux do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.6.0/vjuu-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f70f99b1ee4f5e381b8bb7839a814b4a7bebf3d9ad524e14b52ced578a490eb9"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.6.0/vjuu-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "75a500cea5586adb2709fdadf7470793f594d634dc32444bf1b4ef2d50ab1c89"
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
