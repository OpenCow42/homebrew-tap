class Mb < Formula
  desc "Local document memory CLI for agents and tools"
  homepage "https://github.com/OpenCow42/metaBrain"

  url "https://github.com/OpenCow42/metaBrain/releases/download/1.2.1/mb-1.2.1-macos-universal.zip"
  sha256 "388c0d3fd5bc5fea17630d37011c9780dda3d855a40ba18674dbfdb2b1080f88"
  license "BSD-3-Clause"

  def install
    bin.install "bin/mb"
    bin.install "bin/mbd"
    prefix.install "README.md"
    prefix.install "LICENSE"
  end

  test do
    assert_match "Inspect and update a metaBrain document store", shell_output("#{bin}/mb --help")
    assert_match "mbd", shell_output("#{bin}/mbd --help")
  end
end
