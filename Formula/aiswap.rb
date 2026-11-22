class Aiswap < Formula
  desc "Zero-proxy local account switcher, quota monitor, and TUI for Claude Code, Codex CLI, and Antigravity"
  homepage "https://github.com/haimingx/aiswap"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.3/aiswap-v1.0.3-darwin-arm64.tar.gz"
      sha256 "45ee1db4c2d92174ba6d4e7bbb843642153bb088d68dbc8a50fcd89aa3c19d68"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.3/aiswap-v1.0.3-darwin-amd64.tar.gz"
      sha256 "896694d39b60fb91cb95192b6ec7d93c830ba49ae8a36dadb39be27248b522c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.3/aiswap-v1.0.3-linux-arm64.tar.gz"
      sha256 "0a9cf2d67854555385514adafcb1376b9e6474c1f5c534d5f92d78c4959ecc21"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.3/aiswap-v1.0.3-linux-amd64.tar.gz"
      sha256 "59f5177af3ca9ce16c9d8f3455428c98f4a68bf2358cacc8cef34a0d05dfa2b3"
    end
  end

  def install
    bin.install "aiswap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiswap version")
  end
end
