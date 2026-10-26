# Template for Formula/vjuu.rb in github.com/kimvais/homebrew-tap; the release workflow fills in @...@.
class Vjuu < Formula
  desc "Fast review window for AI-agent handoffs, with inline comments"
  homepage "https://github.com/kimvais/vjuu"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.5.0/vjuu-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "01b41ac503f144d71627c78bc74ffa6eecbcc8df6b9c93cff6609c3a057b3558"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.5.0/vjuu-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "4e95fba61465c5b0c8c39f246e60d0d0d91a9e91351f359c9384f79ad7139ff9"
    end
  end

  # Linux builds link the system's WebKitGTK 4.1 and GTK 3 (Debian/Ubuntu: libwebkit2gtk-4.1-0).
  on_linux do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.5.0/vjuu-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "180b1eadd627268042b52f5cd1360053f6a15f211718c7a523ff7b851d750883"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.5.0/vjuu-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ee5948ac1bd35c636888f29db62caa081b6237a606870934a44363aa65fd807"
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
