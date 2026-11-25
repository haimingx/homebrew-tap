class Aiswap < Formula
  desc "Zero-proxy local account switcher, quota monitor, and TUI for Claude Code, Codex CLI, and Antigravity"
  homepage "https://github.com/haimingx/aiswap"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.2.1/aiswap-v1.2.1-darwin-arm64.tar.gz"
      sha256 "d2b1114a2a8e37ac27e162955acf1adce3b94cae08fb0be26fbb0b1fadeac2c7"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.2.1/aiswap-v1.2.1-darwin-amd64.tar.gz"
      sha256 "dff4eaae5d347ddafa61273564c4328d685dfbbf7117525e02d0cfd8a0aa63be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.2.1/aiswap-v1.2.1-linux-arm64.tar.gz"
      sha256 "8ac8524f7e8ec1154e1c6308bf4e4fbc77992d4962f73c240f6a9020bacc1e0b"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.2.1/aiswap-v1.2.1-linux-amd64.tar.gz"
      sha256 "8d6a2e619041336feebf807bf355c81de6dd9c8b17537f3c9837cfb05f2f6e91"
    end
  end

  def install
    bin.install "aiswap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiswap version")
  end
end
