class Aiswap < Formula
  desc "Zero-proxy local account switcher, quota monitor, and TUI for Claude Code, Codex CLI, and Antigravity"
  homepage "https://github.com/haimingx/aiswap"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.6/aiswap-v1.0.6-darwin-arm64.tar.gz"
      sha256 "521402f988741e9a16c670512a546687b5ab7029c3972a9e8bb8d2ce6dee6b6e"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.6/aiswap-v1.0.6-darwin-amd64.tar.gz"
      sha256 "3e3ce5548583c21ca5dd69de539719e5cf40c1a5aef8c9fb6e47a566b00ab277"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.6/aiswap-v1.0.6-linux-arm64.tar.gz"
      sha256 "381c119ff6c2ae089882665f1ad1d835b9cabcb46f7b8c816a5127c612b63681"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.6/aiswap-v1.0.6-linux-amd64.tar.gz"
      sha256 "28e18468b3593d8f880844d0b80b9f7a00ac7c05de0cd2bcd571729298f8fe73"
    end
  end

  def install
    bin.install "aiswap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiswap version")
  end
end
