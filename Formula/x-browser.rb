class XBrowser < Formula
  include Language::Python::Virtualenv

  desc "Browser-based CLI for X/Twitter using Playwright + CDP"
  homepage "https://github.com/shivamtiwari93/x-browser"
  url "https://github.com/shivamtiwari93/x-browser/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "51ea62da7a3bb7245247b8695ce3acb4cb863b01c0ef92d97b5fda332d235884"
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
