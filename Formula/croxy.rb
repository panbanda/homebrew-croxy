class Croxy < Formula
  desc "Model-routing proxy for the Anthropic API"
  homepage "https://github.com/panbanda/croxy"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v1.1.0/croxy_1.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "69043980cea0e2f672f03a13da583e6e977c426f25fa38ad076477c035715928"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v1.1.0/croxy_1.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "e2dc5e2267816018143f24f27335c0b700c53e0f293ef64a0cf65e7fbd11cfe3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v1.1.0/croxy_1.1.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "756e37b7fba685478d9f3e6753147f6346a097a69be7ddce28555044f39338ee"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v1.1.0/croxy_1.1.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d0d4bb28e7add33bc4016ed6abdde090baf3a7af9787df41fb5b40b3e035f045"
    end
  end

  def install
    bin.install "croxy"
  end

  test do
    system "\#{bin}/croxy", "--version"
  end
end
