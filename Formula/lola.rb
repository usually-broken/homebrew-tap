class Lola < Formula
  desc "Agent harness where everything is a plugin"
  homepage "https://github.com/usually-broken/Lola"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/usually-broken/Lola/releases/download/v0.1.0/lola_v0.1.0_darwin_arm64.tar.gz"
      sha256 "18e98e3756a019b109bce474cb61a29d1aa8c9528b220625b65b95d62454a7f3"
    end

    on_intel do
      url "https://github.com/usually-broken/Lola/releases/download/v0.1.0/lola_v0.1.0_darwin_amd64.tar.gz"
      sha256 "4094b4cbf247e03ffcd2534242574a54959fcafa9543ca5d2c0f21ac8e96338c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usually-broken/Lola/releases/download/v0.1.0/lola_v0.1.0_linux_arm64.tar.gz"
      sha256 "c18323d87a27aa3b32a8fa7d4f2378b4117c1b1492d48798f737fcf8af61485f"
    end

    on_intel do
      url "https://github.com/usually-broken/Lola/releases/download/v0.1.0/lola_v0.1.0_linux_amd64.tar.gz"
      sha256 "a01118ba8c174057a151b9913ec85b4dc04bec8478b5a0ba282ae7315d2ed315"
    end
  end

  def install
    bin.install "lola"
  end

  test do
    assert_match "lola", shell_output("#{bin}/lola --version")
  end
end
