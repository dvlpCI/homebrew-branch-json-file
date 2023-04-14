class Helloworld < Formula
  desc "样例"
  homepage "https://github.com/dvlpCI/homebrew-branch-json-file"
  url "https://github.com/dvlpCI/homebrew-branch-json-file/archive/v0.0.3.tar.gz"
  sha256 "a7a8939b875b7b1cbbed7c2bae268f9dc1ef16622ad186cc69f72dca9c5be5a3"

  def install
    # Install script to bin
    bin.install "helloworld.sh"
  end

  def uninstall
    rm "#{bin}/helloworld.sh"
  end

  test do
    # Test your script
    system "#{bin}/helloworld", "--version"
  end
end