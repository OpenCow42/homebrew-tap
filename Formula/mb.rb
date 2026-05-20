class Mb < Formula
  desc "Local document memory CLI for agents and tools"
  homepage "https://github.com/OpenCow42/metaBrain"

  github_token = ENV["HOMEBREW_GITHUB_API_TOKEN"] || ENV["GITHUB_TOKEN"]
  github_auth_headers = github_token.to_s.empty? ? [] : ["Authorization: Bearer #{github_token}"]

  url "https://api.github.com/repos/OpenCow42/metaBrain/releases/assets/425272785",
      headers: github_auth_headers + ["Accept: application/octet-stream"]
  version "1.1.1"
  sha256 "e8d6ac51d2d3e688dec8a67de927da3f526c05c91bb4af6edb05a878158e693c"
  license "BSD-3-Clause"

  def install
    bin.install "bin/mb"
    prefix.install "README.md"
    prefix.install "LICENSE"
  end

  test do
    assert_match "Inspect and update a metaBrain document store", shell_output("#{bin}/mb --help")
  end
end
