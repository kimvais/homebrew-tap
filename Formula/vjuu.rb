# Template for Formula/vjuu.rb in github.com/kimvais/homebrew-tap; the release workflow fills in @...@.
class Vjuu < Formula
  desc "Fast review window for AI-agent handoffs, with inline comments"
  homepage "https://github.com/kimvais/vjuu"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.1.1/vjuu-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "df02e204f10927ee9f7d2abfff3e4823b7a7752b293d5cd9f0b1ed6ae83d00bb"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.1.1/vjuu-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "c3e877df9b5324fbea9f62de8d49d58dbaa0d26dbfe2dc15df8620d32f24403b"
    end
  end

  # Linux builds link the system's WebKitGTK 4.1 and GTK 3 (Debian/Ubuntu: libwebkit2gtk-4.1-0).
  on_linux do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.1.1/vjuu-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d0338cef9156d3f8d5b60d7807158fd76960cfe21f8e6a3bd61ae63d0cc5418"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.1.1/vjuu-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c9c08ce83e8cdf675d22b7972acf9fa53e7128f8561a0c1adfa5360f23acc66"
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
