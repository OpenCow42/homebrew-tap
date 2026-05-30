class Mb < Formula
  desc "Local document memory CLI for agents and tools"
  homepage "https://github.com/OpenCow42/metaBrain"

  url "https://github.com/OpenCow42/metaBrain/releases/download/1.2.0/mb-1.2.0-macos-universal.zip"
  sha256 "4112bb5ec99cc27d6627a20e1b6c636d01af356d7ea79d815ca77aaf308d7083"
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
