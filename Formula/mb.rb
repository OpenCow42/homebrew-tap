class Mb < Formula
  desc "Local document memory CLI for agents and tools"
  homepage "https://github.com/OpenCow42/metaBrain"

  url "https://github.com/OpenCow42/metaBrain/releases/download/1.4.1/mb-1.4.1-macos-universal.zip"
  sha256 "8af0625a55f0101d924478d7f779b5c7b6050d1b3a353bad4d8d241f6c8fb9e2"
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
