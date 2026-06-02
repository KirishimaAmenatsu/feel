class Feel < Formula
  desc "记录当前感受的命令行工具 / CLI tool to record your current feelings"
  homepage "https://github.com/CamelliaTse/feel"
  url "https://github.com/CamelliaTse/feel/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "7985ff6ea925e982d93d447deb4f50c4ab64ab7dbf2dc5eec4a87a12c2eabf60"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "feel"
  end

  test do
    assert_match "feel", shell_output("#{bin}/feel help")
  end
end
