class XBrowser < Formula
  include Language::Python::Virtualenv

  desc "Browser-based CLI for X/Twitter using Playwright + CDP"
  homepage "https://github.com/shivamtiwari93/x-browser"
  url "https://github.com/shivamtiwari93/x-browser/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "602969d1d5ed3a44a07bc319c61431cb20aa3ea954ecca505aaf30153a032469"
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
