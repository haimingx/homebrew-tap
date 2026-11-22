class Aiswap < Formula
  desc "Zero-proxy local account switcher, quota monitor, and TUI for Claude Code, Codex CLI, and Antigravity"
  homepage "https://github.com/haimingx/aiswap"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.2/aiswap-v1.0.2-darwin-arm64.tar.gz"
      sha256 "500327b871ce18adb45aea235c7c6aa10cfece99d3a4dd50eede1ed99f10819b"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.2/aiswap-v1.0.2-darwin-amd64.tar.gz"
      sha256 "c9c84d056e390f23fef50b85708342968d73d147ea8854cc48d014d4889c5bc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.2/aiswap-v1.0.2-linux-arm64.tar.gz"
      sha256 "09c33a9ba5ea6cf654caf68861db203fdec5c4c1c4d52109b7955cb2b77adac4"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.2/aiswap-v1.0.2-linux-amd64.tar.gz"
      sha256 "55da3d6de8c8023a318e4b70b52d63afd56f4cb33347d9a0e5f75213bb3430b7"
    end
  end

  def install
    bin.install "aiswap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiswap version")
  end
end
