class XBrowser < Formula
  include Language::Python::Virtualenv

  desc "Browser-based CLI for X/Twitter using Playwright + CDP"
  homepage "https://github.com/shivamtiwari93/x-browser"
  url "https://github.com/shivamtiwari93/x-browser/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "ace48ac5e624d78e4344f9fbfd9100bc5d18e1d3489cbd176c7336d35a425f4a"
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
