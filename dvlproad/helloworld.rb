class DemoTool < Formula
  desc "样例"
  homepage "https://github.com/dvlpCI/homebrew-branch-json-file"
  url "https://github.com/dvlpCI/homebrew-branch-json-file/archive/v0.0.1.tar.gz"
  sha256 "8143d7da9631f4d1122371832a5c3046cc3b73d1eb504e9cdc77d80a53637ab8"

  def install
    # Install script to bin
    bin.install "yourscript.sh"
  end

  def uninstall
    rm "#{bin}/my-shell.sh"
  end

  test do
    # Test your script
    system "#{bin}/yourscript", "--version"
  end
end