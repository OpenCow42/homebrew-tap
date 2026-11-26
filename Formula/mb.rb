class Mb < Formula
  desc "Local document memory CLI for agents and tools"
  homepage "https://github.com/OpenCow42/metaBrain"

  url "https://github.com/OpenCow42/metaBrain/releases/download/1.4.0/mb-1.4.0-macos-universal.zip"
  sha256 "8fcedf9366a7e0ce8a5bfd38b40f3e8a22f5f79476bc0b01e2af1efd66fc2aaf"
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
