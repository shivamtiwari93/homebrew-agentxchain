class XBrowser < Formula
  include Language::Python::Virtualenv

  desc "Browser-based CLI for X/Twitter using Playwright + CDP"
  homepage "https://github.com/shivamtiwari93/x-browser"
  url "https://github.com/shivamtiwari93/x-browser/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "0b4e2c6a80e318c88093b874bd241ddae994de81afa5f9c3c77ef4a795c3ecf4"
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
