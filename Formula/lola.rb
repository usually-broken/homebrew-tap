class Lola < Formula
  desc "Agent harness where everything is a plugin"
  homepage "https://github.com/usually-broken/Lola"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/usually-broken/Lola/releases/download/v0.2.1/lola_v0.2.1_darwin_arm64.tar.gz"
      sha256 "f6411b5662491316675ee57e27e8099d0a084f393685b2dba00beb9a17f6aaf1"
    end

    on_intel do
      url "https://github.com/usually-broken/Lola/releases/download/v0.2.1/lola_v0.2.1_darwin_amd64.tar.gz"
      sha256 "aab6e98ebbeb367bdb0b809c04264f0813b8d9ab9c2fe5c82a56f91a99c3f270"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usually-broken/Lola/releases/download/v0.2.1/lola_v0.2.1_linux_arm64.tar.gz"
      sha256 "14349b0b6fbaef03b1f1c1777cc86ab3ab15d38c9de18f78afc0fdc04a0aa4dd"
    end

    on_intel do
      url "https://github.com/usually-broken/Lola/releases/download/v0.2.1/lola_v0.2.1_linux_amd64.tar.gz"
      sha256 "c9009f511d783d3d7ec6cd38eab12f050ab2586bb9fd653b56ee1c91455c13af"
    end
  end

  def install
    bin.install "lola"
  end

  test do
    assert_match "lola", shell_output("#{bin}/lola --version")
  end
end
