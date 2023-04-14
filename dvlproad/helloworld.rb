class Helloworld < Formula
  desc "样例"
  homepage "https://github.com/dvlpCI/homebrew-branch-json-file"
  url "https://github.com/dvlpCI/homebrew-branch-json-file/archive/v0.0.2.tar.gz"
  sha256 "8143d7da9631f4d1122371832a5c3046cc3b73d1eb504e9cdc77d80a53637ab8"

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