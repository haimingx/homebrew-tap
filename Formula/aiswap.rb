class Aiswap < Formula
  desc "Zero-proxy local account switcher, quota monitor, and TUI for Claude Code, Codex CLI, and Antigravity"
  homepage "https://github.com/haimingx/aiswap"
  version "1.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.8/aiswap-v1.0.8-darwin-arm64.tar.gz"
      sha256 "8b9c7f8917558c192cd91ad4d7593bf5da1c7c3fa394378cfe5ba6216db452c5"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.8/aiswap-v1.0.8-darwin-amd64.tar.gz"
      sha256 "cb07dcf33d0517d06c266dac37f53b8f6bb4e0e1a98860525288fc4248eba702"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.8/aiswap-v1.0.8-linux-arm64.tar.gz"
      sha256 "8992604743ffe1ec72a8af719e22634ab8d336ebee9ac5c804a31aafeffa725a"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.8/aiswap-v1.0.8-linux-amd64.tar.gz"
      sha256 "f923e58231cb42682fefb04740a5924474e4d1e169df4b1a7a37e1c594abc133"
    end
  end

  def install
    bin.install "aiswap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiswap version")
  end
end
