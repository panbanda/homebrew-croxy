class Croxy < Formula
  desc "Model-routing proxy for the Anthropic API"
  homepage "https://github.com/panbanda/croxy"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.0.0/croxy_2.0.0_aarch64-apple-darwin.tar.gz"
      sha256 "a36aaeb3d00f4052ec48319f8d289ea9a72bdc2a4ff80535745681c572175305"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.0.0/croxy_2.0.0_x86_64-apple-darwin.tar.gz"
      sha256 "78fa4193dcd8a2c6ef844c8596cea0f5ad8eb679cb15c5464f8a579b55c95c4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.0.0/croxy_2.0.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "77980e42a89360c838bb528922687dbdc193c8ee8d3500782970ad12d9878ce7"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.0.0/croxy_2.0.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efb4d8762d2f0968d6ecf44893bab7060ffad09120229d549273651b0e28e54c"
    end
  end

  def install
    bin.install "croxy"
  end

  test do
    system "\#{bin}/croxy", "--version"
  end
end
