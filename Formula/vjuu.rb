# Template for Formula/vjuu.rb in github.com/kimvais/homebrew-tap; the release workflow fills in @...@.
class Vjuu < Formula
  desc "Fast review window for AI-agent handoffs, with inline comments"
  homepage "https://github.com/kimvais/vjuu"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.1/vjuu-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "4fc3a83ce7a90511a9df75d1286b748d82e262cc9a802c191669af07d7b0849a"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.1/vjuu-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "24f19cace0a1d165ba5488af490bb611d1933be00af85723f6044a4088d049b1"
    end
  end

  # Linux builds link the system's WebKitGTK 4.1 and GTK 3 (Debian/Ubuntu: libwebkit2gtk-4.1-0).
  on_linux do
    on_arm do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.1/vjuu-v0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7e47267a48a41ae043797b819c297b77f8ac71a1a3453818e96ee0516691a45"
    end
    on_intel do
      url "https://github.com/kimvais/vjuu/releases/download/v0.3.1/vjuu-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b77e5a8737e92402d220307582ff8e7d37c880a0f00fa45357f660bda3944ed"
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
