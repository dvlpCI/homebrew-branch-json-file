class Helloworld < Formula
  desc "样例"
  homepage "https://github.com/dvlpCI/script-branch-json-file"
  url "https://github.com/dvlpCI/script-branch-json-file/archive/0.0.1.tar.gz"
  sha256 "70ba69716b6ae6c248ca6f189ae56efca80344021b1beb18daedafe2d8c7f7b5"

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