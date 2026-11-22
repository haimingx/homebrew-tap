class Chaintable < Formula
  desc "Command-line client for Chaintable: on-chain SQL, live tables, chain state, and BlockX compute"
  homepage "https://github.com/haimingx/chaintable-cli"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haimingx/chaintable-cli/releases/download/v0.6.5/chaintable_0.6.5_darwin_arm64.tar.gz"
      sha256 "0950caabe4ee8315151b7401d8b7f8619cc9ff164ccb8e1409754d0f176471e1"
    end
    on_intel do
      url "https://github.com/haimingx/chaintable-cli/releases/download/v0.6.5/chaintable_0.6.5_darwin_amd64.tar.gz"
      sha256 "217938c2afbb47ac0d0d9d2f118cefe84bdb4072596c24c895af10d9feeedac3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haimingx/chaintable-cli/releases/download/v0.6.5/chaintable_0.6.5_linux_arm64.tar.gz"
      sha256 "bb0b4492f334f7dcfa2abec90f2487383359833050d078d149fb0524e3550562"
    end
    on_intel do
      url "https://github.com/haimingx/chaintable-cli/releases/download/v0.6.5/chaintable_0.6.5_linux_amd64.tar.gz"
      sha256 "2b7baa5fbf317083cec3a83024261a8cf9a64468bab5cd8dc542f62f10b7b4f3"
    end
  end

  def install
    bin.install "chaintable"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chaintable version")
  end
end
