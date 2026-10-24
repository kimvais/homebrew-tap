# Template for Formula/vjuu.rb in github.com/kimvais/homebrew-tap; the release workflow fills in @...@.
class Vjuu < Formula
  desc "Fast review window for AI-agent handoffs, with inline comments"
  homepage "https://github.com/kimvais/vjuu"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.3/vjuu-v0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "3673f44ab2106023c46e62d0934ea96ab466bce25a40bc929ad3ccb6561668b1"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.3/vjuu-v0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "408e0a9025c00e9af4c4dd99613c064d272e4247666b237b93618033a88f8f4a"
    end
  end

  # Linux builds link the system's WebKitGTK 4.1 and GTK 3 (Debian/Ubuntu: libwebkit2gtk-4.1-0).
  on_linux do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.3/vjuu-v0.3.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "70d262905b8bc7599cfb4370227e7e9587bd3694a69d4ff28280f02e43dddf94"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.3/vjuu-v0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b422728a58fbe8451bb3390f9a7ce68151c9cabed77b6caaefcca7ff45a654a5"
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
