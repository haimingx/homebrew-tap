class Aiswap < Formula
  desc "Zero-proxy local account switcher, quota monitor, and TUI for Claude Code, Codex CLI, and Antigravity"
  homepage "https://github.com/haimingx/aiswap"
  version "1.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.7/aiswap-v1.0.7-darwin-arm64.tar.gz"
      sha256 "1284f01d018eee2522e474aea51298e973cbab29ae7ac30e0b6d2db8f832183a"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.7/aiswap-v1.0.7-darwin-amd64.tar.gz"
      sha256 "3f1baabc422611381b36a912cd948653e5ea49ba8574ee79b0c27dd17043a9f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.7/aiswap-v1.0.7-linux-arm64.tar.gz"
      sha256 "0f14b5e51a26a558cf240c12522e46bb9b4a79f0114ef925d1907b5b488bae85"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.7/aiswap-v1.0.7-linux-amd64.tar.gz"
      sha256 "596dac2b7b1c2f3eaa92fb5e831078d351acd8f320d5d2be34c42c7972a8a617"
    end
  end

  def install
    bin.install "aiswap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiswap version")
  end
end
