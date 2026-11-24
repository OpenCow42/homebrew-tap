class Mb < Formula
  desc "Local document memory CLI for agents and tools"
  homepage "https://github.com/OpenCow42/metaBrain"

  url "https://github.com/OpenCow42/metaBrain/releases/download/1.3.0/mb-1.3.0-macos-universal.zip"
  sha256 "4a1c79eb6d2bc90fa573122542c9f477016cfeaa6c0319438ff82e9a5ccfa3fd"
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
