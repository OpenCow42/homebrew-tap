class Mb < Formula
  desc "Local document memory CLI for agents and tools"
  homepage "https://github.com/OpenCow42/metaBrain"

  github_token = ENV["HOMEBREW_GITHUB_API_TOKEN"] || ENV["GITHUB_TOKEN"]
  github_auth_headers = github_token.to_s.empty? ? [] : ["Authorization: Bearer #{github_token}"]

  url "https://api.github.com/repos/OpenCow42/metaBrain/releases/assets/425280132",
      headers: github_auth_headers + ["Accept: application/octet-stream"]
  version "1.1.1"
  sha256 "89a4b79100e10d2e3241a21c533be8d810375371ad559d30121cae3328e29318"
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
