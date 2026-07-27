class Mat < Formula
  desc "여러 AI CLI(Claude Code, Codex, Gemini/Antigravity) 계정을 하나의 TUI에서 전환"
  homepage "https://github.com/ictechgy/multi-account-tool"
  url "https://registry.npmjs.org/multi-account-tool/-/multi-account-tool-0.8.2.tgz"
  sha256 "ff889d291e511c45f5fe51e9a9bbeb09c62d9046e18f3d0e10adc7f71c4a0932"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_path_exists bin/"mat"
    assert_predicate bin/"mat", :executable?
  end
end
