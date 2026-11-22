class Aiswap < Formula
  desc "Zero-proxy local account switcher, quota monitor, and TUI for Claude Code, Codex CLI, and Antigravity"
  homepage "https://github.com/haimingx/aiswap"
  version "1.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.9/aiswap-v1.0.9-darwin-arm64.tar.gz"
      sha256 "536b4f93ae78f07c1f57457a4e836b649197f3077c61170430f709626333a022"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.9/aiswap-v1.0.9-darwin-amd64.tar.gz"
      sha256 "df296b900a08901458dc1c73c127623b820dd6b9cd0947ac7fa1e7772d10c6d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.9/aiswap-v1.0.9-linux-arm64.tar.gz"
      sha256 "753901cac34adb0b2ee6158ba1cff0a5a90239369a6733660dd04d40791f1c94"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.9/aiswap-v1.0.9-linux-amd64.tar.gz"
      sha256 "e8ff5d9279923a1ab88965cf247b896d78a63024174db11e73de85c2355c8c3c"
    end
  end

  def install
    bin.install "aiswap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiswap version")
  end
end
