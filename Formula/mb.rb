class Mb < Formula
  desc "Local document memory CLI for agents and tools"
  homepage "https://github.com/OpenCow42/metaBrain"
  license "BSD-3-Clause"

  github_token = ENV["HOMEBREW_GITHUB_API_TOKEN"] || ENV["GITHUB_TOKEN"]
  github_auth_headers = github_token.to_s.empty? ? [] : ["Authorization: Bearer #{github_token}"]

  url "https://api.github.com/repos/OpenCow42/metaBrain/releases/assets/423161822",
      headers: github_auth_headers + ["Accept: application/octet-stream"]
  sha256 "4000c0f97756ba528a06a2c830b138720dff9f4e06e40dc65a8ae2aaf84d2400"
  version "1.0.0"

  def install
    bin.install "bin/mb"
    prefix.install "README.md"
    prefix.install "LICENSE"
  end

  test do
    assert_match "Inspect and update a metaBrain document store", shell_output("#{bin}/mb --help")
  end
end
