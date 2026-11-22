class Aiswap < Formula
  desc "Zero-proxy local account switcher, quota monitor, and TUI for Claude Code, Codex CLI, and Antigravity"
  homepage "https://github.com/haimingx/aiswap"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.1/aiswap-v1.0.1-darwin-arm64.tar.gz"
      sha256 "756fb42a72935ef83d7a2b4d95875d41543371682b1750894350d1df2403a89b"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.1/aiswap-v1.0.1-darwin-amd64.tar.gz"
      sha256 "ab37520a98e18169de805a6855ba27042adce1e8f67532a2789a93f4c35d07ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.1/aiswap-v1.0.1-linux-arm64.tar.gz"
      sha256 "d5b0cbd25928ca2635a953268ebf2f6412a570f2512a0a90055e1dc5b1eb9091"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.1/aiswap-v1.0.1-linux-amd64.tar.gz"
      sha256 "dfb958b4cc554ac5d2046f8a8f14764ddbe8cd8bee64ad17bb00de29c47af97e"
    end
  end

  def install
    bin.install "aiswap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiswap version")
  end
end
