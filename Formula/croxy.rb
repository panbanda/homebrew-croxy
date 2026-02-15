class Croxy < Formula
  desc "Model-routing proxy for the Anthropic API"
  homepage "https://github.com/panbanda/croxy"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v1.0.2/croxy_1.0.2_aarch64-apple-darwin.tar.gz"
      sha256 "0424aca9689b9fae9806565bfbb6ddf037c0f053f0669cdcf9ffb34e48a16d5f"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v1.0.2/croxy_1.0.2_x86_64-apple-darwin.tar.gz"
      sha256 "b2ec1b8defddc1a9e6cbb87a98e24ea0fb9eb09626df8f5c3f9befb543319156"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/croxy/releases/download/croxy-v1.0.2/croxy_1.0.2_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dfb40d73e46eed40fa5cdca856f009825ef6f37cc57be244a294401a831413d2"
    else
      url "https://github.com/panbanda/croxy/releases/download/croxy-v1.0.2/croxy_1.0.2_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "73dd3ecd9c6638aa246cd07b928b4fccb0d252efbdb6664c03ce5c1c35a93d29"
    end
  end

  def install
    bin.install "croxy"
  end

  test do
    system "\#{bin}/croxy", "--version"
  end
end
