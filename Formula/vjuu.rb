# Template for Formula/vjuu.rb in github.com/kimvais/homebrew-tap; the release workflow fills in @...@.
class Vjuu < Formula
  desc "Fast review window for AI-agent handoffs, with inline comments"
  homepage "https://github.com/kimvais/vjuu"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.2.0/vjuu-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "54c99988793acaffb2e32d0d1dde0adb464ae6d1835ac2096930e3aa0a2bd55f"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.2.0/vjuu-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "24c36162441b02538c149ca896cf2107e4c7751baf69cced92755b9db2b1b149"
    end
  end

  # Linux builds link the system's WebKitGTK 4.1 and GTK 3 (Debian/Ubuntu: libwebkit2gtk-4.1-0).
  on_linux do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.2.0/vjuu-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a4304b4a380237b4599d4b349899e18ab643329633f28e0e91c535d1c70db2e"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.2.0/vjuu-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "703d25b0ce34edabc13ef91a5f87f0801304e24307726a9e8598be996a8f0096"
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
