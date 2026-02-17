class Croxy < Formula
  desc "Model-routing proxy for the Anthropic API"
  homepage "https://github.com/panbanda/croxy"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.2.0/croxy_2.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "b1e19efce83a77720b69ca73928815c5f009364c0196dbd00bcc9fd3ed08ae53"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.2.0/croxy_2.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "b0a913b9405321eec6b5cd5d78103b796b9fb82d76c9cdc7fd3aafc2151a650e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.2.0/croxy_2.2.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5eb8970f96024656a869a012b3d8b134deaad71a3f603a7ec5d9072bf8685dee"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.2.0/croxy_2.2.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f9041b93dfa58300f441236749519479824dba5ab14a08dfb728fa269234e5f4"
    end
  end

  def install
    bin.install "croxy"
  end

  test do
    system "\#{bin}/croxy", "--version"
  end
end
