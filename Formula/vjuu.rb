# Template for Formula/vjuu.rb in github.com/kimvais/homebrew-tap; the release workflow fills in @...@.
class Vjuu < Formula
  desc "Fast review window for AI-agent handoffs, with inline comments"
  homepage "https://github.com/kimvais/vjuu"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.1.0/vjuu-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "a044bb277d4f0c94b272e868f6d184b5a941600b697eb73fafb19ff7439eec16"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.1.0/vjuu-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "bf967641def6b35904a902e8a436647ee6e681558429ce0969b1d6cf0cefa1a8"
    end
  end

  # Linux builds link the system's WebKitGTK 4.1 and GTK 3 (Debian/Ubuntu: libwebkit2gtk-4.1-0).
  on_linux do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.1.0/vjuu-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bca18b26f0050e748553b6a34bf27b39c0ea360c51e34286aa79f0ffc6251d61"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.1.0/vjuu-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96c663a1e27481c143aa1428e51f360a9468c127d92fb143187365de064b4078"
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
