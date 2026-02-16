class Croxy < Formula
  desc "Model-routing proxy for the Anthropic API"
  homepage "https://github.com/panbanda/croxy"
  version "2.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.1.1/croxy_2.1.1_aarch64-apple-darwin.tar.gz"
      sha256 "86c5f3f29d6ae8e10dfc340e8242aacfded6fcfe6a3b4d0d8b2903edaa0b14ea"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.1.1/croxy_2.1.1_x86_64-apple-darwin.tar.gz"
      sha256 "a3f32be9ebf7be85e401a7295d32549f98778d4e83964a107677e0835b3f7999"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.1.1/croxy_2.1.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3375a64d97f9f719c2d8972acbcb66910c8fb1a1374e3b9eb026c3bae89f833c"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v2.1.1/croxy_2.1.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84ba89dcd0c908d5a07b3017aba7dd67e24a92f21158739090aefe74f2b341bf"
    end
  end

  def install
    bin.install "croxy"
  end

  test do
    system "\#{bin}/croxy", "--version"
  end
end
