class Aiswap < Formula
  desc "Zero-proxy local account switcher, quota monitor, and TUI for Claude Code, Codex CLI, and Antigravity"
  homepage "https://github.com/haimingx/aiswap"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.0/aiswap-v1.0.0-darwin-arm64.tar.gz"
      sha256 "20c50cce8661ffbb33292325cda1ec71352f3e041b1147af234acf0e96eeea7b"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.0/aiswap-v1.0.0-darwin-amd64.tar.gz"
      sha256 "26b9a6603ac676ce77080a2e0ccd00e1147002970dbcabe2f98a899add0950af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.0/aiswap-v1.0.0-linux-arm64.tar.gz"
      sha256 "3ef478ab5b7079ee8c31f3ab687087eed4676314a3440177a19c970d26334cff"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.0/aiswap-v1.0.0-linux-amd64.tar.gz"
      sha256 "d2374c253badc0c1afadd7ff5781a5cc8ffa904528e798ce6a9cd9700f23ddb2"
    end
  end

  def install
    bin.install "aiswap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiswap version")
  end
end
