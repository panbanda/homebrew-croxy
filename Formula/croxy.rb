class Croxy < Formula
  desc "Model-routing proxy for the Anthropic API"
  homepage "https://github.com/panbanda/croxy"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.1.0/croxy_2.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "44e4f80090b4336197036d3aac68459548fe9d9135290104650ded72e6a6c0cd"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.1.0/croxy_2.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "155d5eb8de09be997601b3b41a3ad515412f5151e3e4cca99d8b7d76ac2caa2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.1.0/croxy_2.1.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc089b6d2e4422cb7f0301e5824402924bb4e88d80f70404ec236b977afbde3d"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.1.0/croxy_2.1.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ddba9c8ab3bc087bb3d78383757649c83175b1122bb266905f210eca615c86bb"
    end
  end

  def install
    bin.install "croxy"
  end

  test do
    system "\#{bin}/croxy", "--version"
  end
end
