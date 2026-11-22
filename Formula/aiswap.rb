class Aiswap < Formula
  desc "Zero-proxy local account switcher, quota monitor, and TUI for Claude Code, Codex CLI, and Antigravity"
  homepage "https://github.com/haimingx/aiswap"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.1.0/aiswap-v1.1.0-darwin-arm64.tar.gz"
      sha256 "33f8bc1d86d2d22af304fd4ab4b034e1969e8e8750eb0267e585135763ea8e67"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.1.0/aiswap-v1.1.0-darwin-amd64.tar.gz"
      sha256 "fd0e7f43a300773d36657fb82df9a5f750591dd2922b0e511ac9f8912625280f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.1.0/aiswap-v1.1.0-linux-arm64.tar.gz"
      sha256 "61352905a17ccbcbd519d0b5bf34898f39eb9f0bba96f6228e71fd893a1f1c04"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.1.0/aiswap-v1.1.0-linux-amd64.tar.gz"
      sha256 "716d768e5b27a4adc08aa9e82209fb0aa48e94a112c3a8086467e6c68619aab6"
    end
  end

  def install
    bin.install "aiswap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiswap version")
  end
end
