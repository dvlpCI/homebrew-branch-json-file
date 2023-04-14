class Helloworld < Formula
  desc "样例"
  homepage "https://github.com/dvlpCI/script-branch-json-file"
  url "https://github.com/dvlpCI/script-branch-json-file/archive/0.0.2.tar.gz"
  sha256 "3fc183959f1733cd47278595c0d5ba5a9896b19f81c9ebd3e8fa3dc4c6b4e003"

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