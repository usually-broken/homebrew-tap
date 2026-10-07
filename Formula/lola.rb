class Lola < Formula
  desc "Agent harness where everything is a plugin"
  homepage "https://github.com/usually-broken/lola"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/usually-broken/Lola/releases/download/v0.1.0/lola_v0.1.0_darwin_arm64.tar.gz"
      sha256 "c57986792ea33e60eb4d4cb476c3306b0a4d55f51147350ca25941b209aecc9c"
    end

    on_intel do
      url "https://github.com/usually-broken/Lola/releases/download/v0.1.0/lola_v0.1.0_darwin_amd64.tar.gz"
      sha256 "a14a4e3875cd1f5c913780296cc5798eaf4369c4234d470f9ae88da03738261b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usually-broken/Lola/releases/download/v0.1.0/lola_v0.1.0_linux_arm64.tar.gz"
      sha256 "fbffc7a69ac820ffc029df08d9d983a32fe370e45798bbe364e4f4b0e522b9d7"
    end

    on_intel do
      url "https://github.com/usually-broken/Lola/releases/download/v0.1.0/lola_v0.1.0_linux_amd64.tar.gz"
      sha256 "50f079d8c8a311be51fa4353be610757e819e7ac9edc0715c2cad1ccd5bcf09c"
    end
  end

  def install
    bin.install "lola"
  end

  test do
    assert_match "lola", shell_output("#{bin}/lola --version")
  end
end
