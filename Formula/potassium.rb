class Potassium < Formula
  desc "Infomaniak suite command-line client"
  homepage "https://github.com/OpenCow42/tool-releases"
  url "https://github.com/OpenCow42/tool-releases/releases/download/potassium-0.0.3/potassium-0.0.3-macos-universal.zip"
  sha256 "d1955a6065881b90c11a656a10c4e0379e5661405bcae1bee515595e9bf592f5"
  license :cannot_represent

  def install
    bin.install "bin/pot"
    prefix.install "README.md"
    prefix.install "SOURCE.txt"
  end

  test do
    assert_equal "0.0.3", shell_output("#{bin}/pot version").strip
    assert_match "Potassium", shell_output("#{bin}/pot --help")
  end
end
