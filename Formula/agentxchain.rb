class Agentxchain < Formula
  desc "CLI for AgentXchain governed multi-agent software delivery"
  homepage "https://agentxchain.dev"
  url "https://registry.npmjs.org/agentxchain/-/agentxchain-2.155.73.tgz"
  sha256 "3dcf99d4de49f4e45272e200f3cd822a42a5b6056b4a316ed68b87b267c4257d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentxchain --version")
  end
end
