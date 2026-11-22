class Aiswap < Formula
  desc "Zero-proxy local account switcher, quota monitor, and TUI for Claude Code, Codex CLI, and Antigravity"
  homepage "https://github.com/haimingx/aiswap"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.5/aiswap-v1.0.5-darwin-arm64.tar.gz"
      sha256 "9a3048b36360fe56b52cb38c2aec3301a1d8d0ab057f7d3db5782ca78ee9e93f"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.5/aiswap-v1.0.5-darwin-amd64.tar.gz"
      sha256 "e53aaace6e7728a5edce6e00286828f5da36acff626dadeab299dbeef3f1acf0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.5/aiswap-v1.0.5-linux-arm64.tar.gz"
      sha256 "2fa94c3cf912c10f7addb289f6a56abb208e98f54173b34357c73a7d24cac3d8"
    end
    on_intel do
      url "https://github.com/haimingx/aiswap/releases/download/v1.0.5/aiswap-v1.0.5-linux-amd64.tar.gz"
      sha256 "60e443f6e1e016455aef650ed3b6d7e7f80a512d8172da00ad562ffe510cec59"
    end
  end

  def install
    bin.install "aiswap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aiswap version")
  end
end
