class Croxy < Formula
  desc "Model-routing proxy for the Anthropic API"
  homepage "https://github.com/panbanda/croxy"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v1.0.1/croxy_1.0.1_aarch64-apple-darwin.tar.gz"
      sha256 "194cda2290ba8bfd626ffd7fc5caf4891332704622191ff88b2f084c35db1b39"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v1.0.1/croxy_1.0.1_x86_64-apple-darwin.tar.gz"
      sha256 "7b05a34bb78806921408f7c6f27bfa02bf7e9cf03c84e722027d0d39cae1dd78"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v1.0.1/croxy_1.0.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac03834b1758d1b1c763372e9f34aa62a81668b5ee65213bfef5f575e1ef39f7"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v1.0.1/croxy_1.0.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4badc16c7c63892c0431a4a9d2aac121f25dcb4cc7f34e3c54ca7d3c10874127"
    end
  end

  def install
    bin.install "croxy"
  end

  test do
    system "\#{bin}/croxy", "--version"
  end
end
