class Aiswap < Formula
  desc "Zero-proxy local account switcher, quota monitor, and TUI for Claude Code, Codex CLI, and Antigravity"
  homepage "https://github.com/haimingx/aiswap"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.4/aiswap-v1.0.4-darwin-arm64.tar.gz"
      sha256 "7bc2f9e3d993462f0869776e4017ae708a7e7c47296eedbeed11c0ca5719091a"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.4/aiswap-v1.0.4-darwin-amd64.tar.gz"
      sha256 "62ca8bc30e764efc0f07c63d131e77f8b6cfba8d5fd6c6f403b2f4840e9db0bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.4/aiswap-v1.0.4-linux-arm64.tar.gz"
      sha256 "115867341b9704e52421e4bbb9461be492e6f9fb67e5a3fcfe8a30275775c1fa"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.4/aiswap-v1.0.4-linux-amd64.tar.gz"
      sha256 "0481e9c9451012abfe896971e5cd724b6e27e4a32f184d2b3ab03af32582cbab"
    end
  end

  def install
    bin.install "aiswap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiswap version")
  end
end
