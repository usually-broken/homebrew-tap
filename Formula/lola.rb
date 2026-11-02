class Lola < Formula
  desc "Agent harness where everything is a plugin"
  homepage "https://github.com/usually-broken/Lola"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/usually-broken/Lola/releases/download/v0.1.1/lola_v0.1.1_darwin_arm64.tar.gz"
      sha256 "934af427405f52a81f4e88b1a7325521e3bb862d1cd473df5a77a01c789879d2"
    end

    on_intel do
      url "https://github.com/usually-broken/Lola/releases/download/v0.1.1/lola_v0.1.1_darwin_amd64.tar.gz"
      sha256 "675fa73d9dcb02b6d342dda400b1ccd4b72fe642cbd29c6c6d4c927c07131ad5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usually-broken/Lola/releases/download/v0.1.1/lola_v0.1.1_linux_arm64.tar.gz"
      sha256 "924375e2098c64094995e5e3054bf6fe591b083900b8e2684e55a5d63d9939b6"
    end

    on_intel do
      url "https://github.com/usually-broken/Lola/releases/download/v0.1.1/lola_v0.1.1_linux_amd64.tar.gz"
      sha256 "7d6dfbd35516e30b9bf7c5c195968919c224e0b63927449adde5312430fb5e8c"
    end
  end

  def install
    bin.install "lola"
  end

  test do
    assert_match "lola", shell_output("#{bin}/lola --version")
  end
end
