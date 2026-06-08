class Potassium < Formula
  desc "Infomaniak suite command-line client"
  homepage "https://github.com/OpenCow42/tool-releases"
  url "https://github.com/OpenCow42/tool-releases/releases/download/potassium-0.0.2/potassium-0.0.2-macos-universal.zip"
  sha256 "447a1df84ab3d795c54e537ccfe6c5ccfff0c89e284ca1c353bea80023c49f79"
  license :cannot_represent

  def install
    bin.install "bin/pot"
    prefix.install "README.md"
    prefix.install "SOURCE.txt"
  end

  test do
    assert_equal "0.0.2", shell_output("#{bin}/pot version").strip
    assert_match "Potassium", shell_output("#{bin}/pot --help")
  end
end
