class XBrowser < Formula
  include Language::Python::Virtualenv

  desc "Browser-based CLI for X/Twitter using Playwright + CDP"
  homepage "https://github.com/shivamtiwari93/x-browser"
  url "https://github.com/shivamtiwari93/x-browser/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "024fec81572e41637dea4f5a958f16df5a7b8270a25bfdd5b5d8a5f9dc8edac3"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  def post_install
    system libexec/"bin/python", "-m", "playwright", "install", "chromium"
  end

  test do
    assert_match "x-browser", shell_output("#{bin}/x-browser --help")
  end
end
