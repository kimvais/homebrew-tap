# Template for Formula/vjuu.rb in github.com/kimvais/homebrew-tap; the release workflow fills in @...@.
class Vjuu < Formula
  desc "Fast review window for AI-agent handoffs, with inline comments"
  homepage "https://github.com/kimvais/vjuu"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.0/vjuu-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "4a7bc7a71d30bd79037e4e9588f5d461639b82030c91b9f2efc260681078a784"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.0/vjuu-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "190c11f81806bea5828106e6057e1df524ac58541b41851e6c916bf58df116ee"
    end
  end

  # Linux builds link the system's WebKitGTK 4.1 and GTK 3 (Debian/Ubuntu: libwebkit2gtk-4.1-0).
  on_linux do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.0/vjuu-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85fb519f80b0dc53e6e3a7e7890ced9768b6528d681cbb727e3909da1ec7caca"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.0/vjuu-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f7aa01aa5d5324a582e79d1e8e143fef3726eb3b2e65fb2a71d4d24ed7fa0e2"
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
