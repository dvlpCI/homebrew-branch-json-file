class Helloworld2 < Formula
  desc "样例"
  homepage "https://github.com/dvlpCI/homebrew-branch-json-file"
  url "https://github.com/dvlpCI/homebrew-branch-json-file/archive/v0.0.6.tar.gz"
  sha256 "9c5d1dbbba559f6cc2e69cd7c422929831960c2dee792542d3805d657b7003de"

  def install
    # Install script to bin
    bin.install "helloworld.sh"
  end

  def install2
    # 将软件包安装到 /usr/local/Cellar 目录中
    prefix.install Dir["*"]
  end

  def uninstall
    rm "#{bin}/helloworld.sh"
  end

  test do
    # Test your script
    system "#{bin}/helloworld", "--version"
  end
end