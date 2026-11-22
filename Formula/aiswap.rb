class Aiswap < Formula
  desc "Zero-proxy local account switcher, quota monitor, and TUI for Claude Code, Codex CLI, and Antigravity"
  homepage "https://github.com/haimingx/aiswap"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.2.0/aiswap-v1.2.0-darwin-arm64.tar.gz"
      sha256 "e0c3eeef5cd5ceadbd3ece0559ec082a17cb12df428a11e30c201eb43b241f8e"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.2.0/aiswap-v1.2.0-darwin-amd64.tar.gz"
      sha256 "e2f869d8840cecca1f1ef4c0fad8fa30c23d90a8a74cd3d0b952580e3edcb6b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.2.0/aiswap-v1.2.0-linux-arm64.tar.gz"
      sha256 "4d4c3c24303286b36adcefa94c61b7ceb378df6681a14456cccea0ace91bc374"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.2.0/aiswap-v1.2.0-linux-amd64.tar.gz"
      sha256 "54d4fa98579a86e3b8486f9e9bae7efcad6ffc6931904e137e2ea9b331cbb8a2"
    end
  end

  def install
    bin.install "aiswap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiswap version")
  end
end
