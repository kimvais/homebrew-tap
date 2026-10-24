# Template for Formula/vjuu.rb in github.com/kimvais/homebrew-tap; the release workflow fills in @...@.
class Vjuu < Formula
  desc "Fast review window for AI-agent handoffs, with inline comments"
  homepage "https://github.com/kimvais/vjuu"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.4.0/vjuu-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "d6fee3106003d102a0f0554c44984a2956d68f308f69bc6cf9f320858ee5f547"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.4.0/vjuu-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "62dfcad9caf6f7ba9951632e7236f582db2b7d389ed388aa06cea5e44b3ddfa6"
    end
  end

  # Linux builds link the system's WebKitGTK 4.1 and GTK 3 (Debian/Ubuntu: libwebkit2gtk-4.1-0).
  on_linux do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.4.0/vjuu-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c0dbe553f324a0b88635465205ed301164faf972932fdcfc4a9092f8a98ad5e"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.4.0/vjuu-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34fdf01b35d348fa1eb2c30a2d12378a991b71643fb1bed3faecd85b3f34c6ca"
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
