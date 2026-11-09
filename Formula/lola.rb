class Lola < Formula
  desc "Agent harness where everything is a plugin"
  homepage "https://github.com/usually-broken/Lola"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/usually-broken/Lola/releases/download/v0.2.0/lola_v0.2.0_darwin_arm64.tar.gz"
      sha256 "1699590f13e211b467ba94fc60d05ca6e75592912d896b353c2f6e1cc356d75b"
    end

    on_intel do
      url "https://github.com/usually-broken/Lola/releases/download/v0.2.0/lola_v0.2.0_darwin_amd64.tar.gz"
      sha256 "8a828997212ad6f51749f82fd75cf5ce6dd3301cfa998b8d29cf94749c8c0422"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/usually-broken/Lola/releases/download/v0.2.0/lola_v0.2.0_linux_arm64.tar.gz"
      sha256 "3e2658aa756b364f84c37b0fe15f2414f703ac2bcce615c2ac890dfb00ef022b"
    end

    on_intel do
      url "https://github.com/usually-broken/Lola/releases/download/v0.2.0/lola_v0.2.0_linux_amd64.tar.gz"
      sha256 "5b39195bab267b6140bc67ad97b6c102ecf1f5a73a094d682ec41def5c74404f"
    end
  end

  def install
    bin.install "lola"
  end

  test do
    assert_match "lola", shell_output("#{bin}/lola --version")
  end
end
